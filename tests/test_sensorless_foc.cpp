#include "Sensorless_FOC.hpp"
#include <assert.h>
#include <stdio.h>
#include <limits>
#include <string.h>
#include "Fast_Telemetry.hpp"

using namespace sensorless_foc;

static void test_motor_tracking(float pwm_gain, bool expect_target) {
    Controller controller;
    const float flux = 60.0f / (400.0f * TwoPi * PolePairs);
    const float filter_pole = expf(-TwoPi * BemfCutoffHz * Dt);
    float theta = 0.0f;
    float omega = TwoPi * StartupMechanicalHz;
    float id = 0.0f;
    float iq = (0.004f + 0.0002f * omega) / (1.5f * PolePairs * flux);
    float max_voltage = 0.0f;
    bool transitioned = false;
    float first_target_seconds = -1.0f;
    for (int n = 0; n < (int)(65.0f / Dt); ++n) { // startup, fast ramp, settling
        const float we = omega * PolePairs;
        const float lag = atan2f(filter_pole * sinf(we * Dt),
                                 1.0f - filter_pole * cosf(we * Dt));
        const float emf = Wrap(theta + TwoPi * 0.25f);
        const float c = cosf(theta), s = sinf(theta);
        // Seed startup voltage in the existing PWM command convention.
        const float startup_vd = -we * 0.000296f * iq / pwm_gain;
        const float startup_vq = (0.64f * iq + we * flux) / pwm_gain;
        const float va = c * startup_vd - s * startup_vq;
        const float vb = s * startup_vd + c * startup_vq;
        const float noise = 0.025f * sinf(n * 0.12f);
        Input in = { Wrap(emf - lag + noise), we * flux,
                     c * id - s * iq, s * id + c * iq,
                     va, vb, Wrap(emf - lag) };
        controller.Step(in);
        assert(controller.state != Fault);
        if (controller.state == Running) {
            transitioned = true;
            const float vm = hypotf(controller.voltage_alpha, controller.voltage_beta);
            max_voltage = fmaxf(max_voltage, vm);
            assert(vm <= VoltageLimit + 1e-4f);
            assert(vm <= VoltageCeiling(controller.reference_hz) + 1e-4f);
            assert(controller.reference_q >= 0.0f && controller.reference_q <= CurrentLimitA);
            assert(controller.reference_q <= CurrentCeiling(controller.reference_hz) + 1e-4f);
            // Test both nominal and half-scale voltage command conventions.
            const float vd = pwm_gain * (c * controller.voltage_alpha + s * controller.voltage_beta);
            const float vq = pwm_gain * (-s * controller.voltage_alpha + c * controller.voltage_beta);
            const float did = (vd - 0.64f * id + we * 0.000296f * iq) / 0.000296f;
            const float diq = (vq - 0.64f * iq - we * (0.000296f * id + flux)) / 0.000296f;
            id += did * Dt;
            iq += diq * Dt;
            const float torque = 1.5f * PolePairs * flux * iq;
            omega += (torque - 0.004f - 0.0002f * omega) / 0.0001f * Dt;
        }
        theta = Wrap(theta + omega * PolePairs * Dt);
        if(first_target_seconds < 0.0f && omega / TwoPi >= TargetMechanicalHz - 0.5f){
            first_target_seconds = n * Dt;
        }
    }
    assert(transitioned);
    assert(fabsf(controller.reference_hz - TargetMechanicalHz) < 0.001f);
    if(expect_target){
        assert(first_target_seconds > 0.0f && first_target_seconds <= 1.0f);
        assert(fabsf(omega / TwoPi - TargetMechanicalHz) < 0.2f);
        assert(fabsf(controller.mechanical_hz - TargetMechanicalHz) < 0.2f);
        assert(fabsf(id) < 0.15f);
    }else{
        // Voltage saturation must remain bounded even when 12 V cannot reach target.
        assert(max_voltage > 0.99f * VoltageLimit);
        assert(omega / TwoPi < TargetMechanicalHz);
    }
    printf("PMSM model (PWM gain %.1f): %.3f mechanical Hz, Id=%.3f A, Iq=%.3f A, max |Vcmd|=%.3f\n",
           pwm_gain, omega / TwoPi, id, iq, max_voltage);
    if(expect_target) printf("Model first 49.5 Hz: %.4f seconds\n", first_target_seconds);

    // Losing BEMF after entering closed loop must latch a zero-output fault.
    Input missing = {theta, 0.0f, 0, 0, 0, 0, 0};
    for (int n = 0; n < (int)(0.15f / Dt); ++n) controller.Step(missing);
    assert(controller.state == Fault && controller.fault == ObserverLost);
    assert(controller.voltage_alpha == 0 && controller.voltage_beta == 0);
}

static void test_faults() {
    Controller no_emf;
    Input empty = {0, 0, 0, 0, 0, 0, 0};
    for (int n = 0; n < (int)(17.0f / Dt); ++n) no_emf.Step(empty);
    assert(no_emf.state == Fault && no_emf.fault == StartupTimeout);

    Controller overcurrent;
    Input allowed = {0, 1, 9.9f, 0, 0, 0, 0};
    overcurrent.Step(allowed);
    assert(overcurrent.state != Fault);
    Input high = {0, 1, 10.1f, 0, 0, 0, 0};
    overcurrent.Step(high);
    assert(overcurrent.state == Fault && overcurrent.fault == OverCurrent);
    overcurrent.Step(empty);
    assert(overcurrent.state == Fault); // no automatic restart

    Controller invalid;
    Input bad = {std::numeric_limits<float>::quiet_NaN(), 1, 0, 0, 0, 0, 0};
    invalid.Step(bad);
    assert(invalid.state == Fault && invalid.fault == InvalidInput);
}

int main() {
    char text[64] = {};
    Fast_Telemetry log(text, sizeof(text));
    log.Fixed3(-0.007f); log.Text(","); log.Fixed3(50.0f);
    log.Text(","); log.Unsigned(15000);
    assert(strcmp(text, "-0.007,50.000,15000") == 0);
    char small[2] = {};
    Fast_Telemetry bounded(small, sizeof(small));
    bounded.Text("123");
    assert(bounded.Size() == 0 && small[0] == '1' && small[1] == '2');
    test_motor_tracking(1.0f, true);
    test_motor_tracking(0.5f, false);
    test_faults();
    puts("FOC model and fault tests passed");
}
