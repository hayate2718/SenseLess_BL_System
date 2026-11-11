#ifndef SENSORLESS_FOC_HPP
#define SENSORLESS_FOC_HPP

#include <math.h>
#include <stdint.h>

// Positive rotation only. Currents use amplitude-invariant alpha/beta [A].
// Voltages use the existing User_PWM command convention.
namespace sensorless_foc {
constexpr float TwoPi = 6.28318530718f;
constexpr uint32_t PwmFrequencyHz = 30000U;
constexpr uint32_t SampleDivider = 2U;
constexpr uint32_t SampleFrequencyHz = PwmFrequencyHz / SampleDivider;
constexpr float Dt = 1.0f / SampleFrequencyHz;
constexpr float PolePairs = 7.0f;
constexpr float TargetMechanicalHz = 50.0f; // 3000 rpm, electrical 350 Hz
constexpr float StartupMechanicalHz = 3.0f;
constexpr float CurrentLimitA = 10.0f;
constexpr float CurrentTripA = 10.0f;
constexpr float SupplyVoltage = 12.0f;
constexpr float ModulationLimit = 0.90f; // duty 5..95%, leaving margin for dead time
constexpr float VoltageLimit = ModulationLimit * SupplyVoltage;
constexpr float MaximumMechanicalHz = 60.0f;
constexpr float OverspeedMechanicalHz = 55.0f;
constexpr float BemfCutoffHz = 200.0f;
constexpr float StartupMinimumSeconds = 0.12f;
constexpr float StartupLockSeconds = 0.04f;
constexpr float AccelerationHzPerSecond = 150.0f;
constexpr float SpeedKp = 0.20f;
constexpr float SpeedKi = 0.5f;

inline float Clamp(float x, float low, float high) {
    return fminf(high, fmaxf(low, x));
}
inline float Wrap(float x) { return remainderf(x, TwoPi); }
inline float CurrentCeiling(float reference_hz) {
    return 1.0f + (CurrentLimitA - 1.0f) * Clamp((reference_hz - 10.0f) / 40.0f, 0.0f, 1.0f);
}
inline float VoltageCeiling(float reference_hz) {
    return 4.8f + (VoltageLimit - 4.8f) * Clamp((reference_hz - 10.0f) / 40.0f, 0.0f, 1.0f);
}

struct Input {
    float bemf_angle;
    float bemf_amplitude;
    float current_alpha;
    float current_beta;
    float previous_voltage_alpha;
    float previous_voltage_beta;
    float startup_voltage_angle;
};

enum State { Starting = 0, Running = 1, Fault = 2 };
enum FaultCode { NoFault = 0, StartupTimeout = 1, ObserverLost = 2,
                 OverCurrent = 3, InvalidInput = 4 };

class Controller {
public:
    State state = Starting;
    FaultCode fault = NoFault;
    float mechanical_hz = StartupMechanicalHz;
    float reference_hz = StartupMechanicalHz;
    float rotor_angle = 0.0f;
    float current_d = 0.0f;
    float current_q = 0.0f;
    float reference_q = 0.0f;
    float voltage_alpha = 0.0f;
    float voltage_beta = 0.0f;
    float phase_error_rms = 0.0f;
    float startup_phase_error_mean = 0.0f;

    void Trip(FaultCode reason) {
        state = Fault;
        fault = reason;
        voltage_alpha = voltage_beta = reference_q = 0.0f;
    }

    void Step(const Input& in) {
        if (state == Fault) return;
        if (!isfinite(in.bemf_angle) || !isfinite(in.bemf_amplitude) ||
            !isfinite(in.current_alpha) || !isfinite(in.current_beta) ||
            !isfinite(in.previous_voltage_alpha) || !isfinite(in.previous_voltage_beta) ||
            !isfinite(in.startup_voltage_angle)) {
            Trip(InvalidInput);
            return;
        }
        if (in.current_alpha * in.current_alpha + in.current_beta * in.current_beta > CurrentTripA * CurrentTripA) {
            Trip(OverCurrent);
            return;
        }

        // Type-II PLL tracks the filtered BEMF vector, including across +/-pi.
        if (!initialized) {
            pll_angle = in.bemf_angle;
            initialized = true;
        }
        const float phase_error = Wrap(in.bemf_angle - pll_angle);
        const float quality_gain = 1.0f - expf(-Dt / 0.02f);
        phase_error_square_mean += quality_gain * (phase_error * phase_error - phase_error_square_mean);
        phase_error_rms = sqrtf(phase_error_square_mean);
        bemf_amplitude_mean += quality_gain * (in.bemf_amplitude - bemf_amplitude_mean);
        if (in.bemf_amplitude >= 0.2f) {
            pll_omega = Clamp(pll_omega + 35530.6f * phase_error * Dt,
                              -TwoPi * PolePairs * 2.0f, TwoPi * PolePairs * MaximumMechanicalHz);
        }
        // Use the corrected angle at this sample for Park, then predict the
        // PLL angle for the next sample. Avoid a whole-sample angle lead.
        const float tracked_emf_angle = Wrap(pll_angle + Dt * 266.57f * phase_error);
        pll_angle = Wrap(tracked_emf_angle + Dt * pll_omega);
        const float speed_filter_gain = 1.0f - expf(-TwoPi * 10.0f * Dt);
        mechanical_hz += speed_filter_gain * (pll_omega / (TwoPi * PolePairs) - mechanical_hz);

        // Exact phase of the discrete one-pole BEMF LPF at the PLL speed.
        const float filter_pole = expf(-TwoPi * BemfCutoffHz * Dt);
        const float omega_dt = pll_omega * Dt;
        const float filter_lag = atan2f(filter_pole * sinf(omega_dt),
                                        1.0f - filter_pole * cosf(omega_dt));
        // For positive rotation BEMF leads the rotor flux by pi/2.
        rotor_angle = Wrap(tracked_emf_angle + filter_lag - TwoPi * 0.25f);
        const float c = cosf(rotor_angle);
        const float s = sinf(rotor_angle);
        current_d = c * in.current_alpha + s * in.current_beta;
        current_q = -s * in.current_alpha + c * in.current_beta;

        if (state == Starting) {
            elapsed += Dt;
            const float startup_phase_error = Wrap(tracked_emf_angle - in.startup_voltage_angle);
            startup_phase_error_mean += quality_gain * (fabsf(startup_phase_error) - startup_phase_error_mean);
            // Qualify sustained PLL quality, not 4500 consecutive noise-free samples.
            if (elapsed > StartupMinimumSeconds && bemf_amplitude_mean > 0.4f &&
                phase_error_rms < 0.25f && startup_phase_error_mean < 1.2f &&
                fabsf(mechanical_hz - StartupMechanicalHz) < 0.5f) {
                lock_time += Dt;
            } else {
                lock_time = 0.0f;
            }
            if (elapsed > 15.0f) { Trip(StartupTimeout); return; }
            if (lock_time < StartupLockSeconds) return;

            // Seed the PI controllers with the last startup voltage/current.
            reference_q = Clamp(current_q, 0.0f, 1.0f);
            speed_integral = reference_q;
            integral_d = c * in.previous_voltage_alpha + s * in.previous_voltage_beta
                         + CurrentKp * current_d;
            integral_q = -s * in.previous_voltage_alpha + c * in.previous_voltage_beta
                         - CurrentKp * (reference_q - current_q);
            state = Running;
        }

        if (in.bemf_amplitude < 0.2f || fabsf(phase_error) > 0.8f ||
            mechanical_hz < 0.5f || mechanical_hz > OverspeedMechanicalHz) {
            lost_time += Dt;
        } else {
            lost_time = 0.0f;
        }
        if (lost_time > 0.1f) { Trip(ObserverLost); return; }

        // Keep the validated 10 Hz envelope at low speed. Broaden headroom
        // progressively above 10 Hz instead of exposing startup to full-current steps.
        const float current_ceiling = CurrentCeiling(reference_hz);
        const float voltage_ceiling = VoltageCeiling(reference_hz);

        // Speed PI at 1 kHz. Ramp from 3 to 50 Hz in about 0.313 seconds.
        if (++speed_divider >= SampleFrequencyHz / 1000U) {
            speed_divider = 0;
            reference_hz = fminf(TargetMechanicalHz, reference_hz + AccelerationHzPerSecond * 0.001f);
            const float error = reference_hz - mechanical_hz;
            // Fast acceleration, then the previously exercised steady-speed gain.
            const float speed_kp = reference_hz < 49.0f ? SpeedKp : 0.05f;
            const float demand = speed_kp * error + speed_integral;
            if (!((demand >= current_ceiling && error > 0.0f) ||
                  (demand <= 0.0f && error < 0.0f))) {
                speed_integral = Clamp(speed_integral + SpeedKi * error * 0.001f,
                                       0.0f, current_ceiling);
            }
            reference_q = Clamp(speed_kp * error + speed_integral, 0.0f, current_ceiling);
        }

        // Park -> independent d/q PI (Id*=0) -> inverse Park.
        const float error_d = -current_d;
        const float error_q = reference_q - current_q;
        const float vd_raw = CurrentKp * error_d + integral_d;
        const float vq_raw = CurrentKp * error_q + integral_q;
        const float magnitude = sqrtf(vd_raw * vd_raw + vq_raw * vq_raw);
        const float scale = magnitude > voltage_ceiling ? voltage_ceiling / magnitude : 1.0f;
        const float vd = vd_raw * scale;
        const float vq = vq_raw * scale;
        // Back-calculation prevents windup under the shared voltage-vector limit.
        integral_d = Clamp(integral_d + CurrentKi * error_d * Dt + 0.1f * (vd - vd_raw),
                           -VoltageLimit, VoltageLimit);
        integral_q = Clamp(integral_q + CurrentKi * error_q * Dt + 0.1f * (vq - vq_raw),
                           -VoltageLimit, VoltageLimit);
        voltage_alpha = c * vd - s * vq;
        voltage_beta = s * vd + c * vq;
    }

private:
    // Conservative nominal 100 Hz current-loop gains from the existing R/L.
    static constexpr float CurrentKp = 0.1859823f; // L * 2*pi*100
    static constexpr float CurrentKi = 402.1239f; // R * 2*pi*100
    bool initialized = false;
    float elapsed = 0.0f;
    float lock_time = 0.0f;
    float lost_time = 0.0f;
    float phase_error_square_mean = 0.0f;
    float bemf_amplitude_mean = 0.0f;
    float pll_angle = 0.0f;
    float pll_omega = TwoPi * PolePairs * StartupMechanicalHz;
    float speed_integral = 0.0f;
    float integral_d = 0.0f;
    float integral_q = 0.0f;
    uint16_t speed_divider = 0;
};
}
#endif
