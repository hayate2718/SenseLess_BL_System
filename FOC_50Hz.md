# Sensorless FOC: 50 mechanical Hz / 3000 rpm request

The configured target is mechanical 50 Hz (electrical 350 Hz, 7 pole pairs).
Supply is 12 V, as confirmed by the user. This supersedes the 10 Hz settings
documented in `FOC_10Hz.md`.

- Iq command ceiling: up to 10 A phase-peak, with a 10 A measured-current trip.
  These are motor phase currents, not DC supply current. Software trips do
  not guarantee that sub-sample current spikes remain below 10 A.
- Below 10 Hz, keep the previously exercised 1 A / 4.8 voltage-command envelope.
  Between 10 and 50 Hz, ramp the available current ceiling from 1 to 10 A and
  voltage-command ceiling from 4.8 to 10.8. The speed reference now ramps at
  150 Hz/s, reaching 50 Hz from 3 Hz in about 0.313 seconds after handoff.
- Maximum modulation is 0.90 in the existing PWM command convention, giving
  nominal duties 5..95% before dead time. The previous PWM scaling is retained.
- PLL positive speed range is extended to 60 mechanical Hz. The observer-loss
  guard includes estimated overspeed above 55 Hz.
- The BEMF LPF remains 200 Hz. Its discrete phase lag is compensated at PLL speed.
- PWM remains at 30 kHz; observer/FOC samples every second PWM interrupt at
  15 kHz. Observer discretization, startup angle, PI integration, PLL and speed
  divider all use the same 15 kHz sampling period. Park uses the PLL angle at
  the current sample, with the next-sample PLL prediction kept separate.

UART output includes `v` (voltage-command vector magnitude) and `sat`
(within 2% of the currently available voltage ceiling), and `fs` (filtered
sampling frequency measured with the 60 MHz CPU core timer), in addition to state,
fault, estimated speed, reference and d/q currents. `hz` is observer-derived,
not an independent tachometer measurement.

Both production build and host model/fault tests pass. The nominal voltage
model reaches 50 Hz; a half-scale PWM-voltage model plateaus at approximately
30.6 Hz at the 10.8 command limit. Thus configuring 50 Hz does not establish
that the physical 12 V motor/inverter can reach it.

The first hardware attempt, which exposed the full 5 A / voltage range at
low speed, latched observer-loss fault 2 near reference 3.29 Hz and disabled
the gate outputs. The staged low-speed envelope above was added before retrying.
The second attempt with the staged envelope reached estimated 38.7 Hz before
the 5 A current-vector protection tripped (Id 4.193 A, Iq 2.701 A). Its
reference ramp progressed more slowly than the assumed sampling period,
motivating the explicit 15 kHz schedule above. These attempts did not verify
50 Hz operation. Their telemetry is in `tests/foc_50hz_hardware_log.txt`.
The 15 kHz retry is recorded in `tests/foc_50hz_15khz_hardware_log.txt`.

Startup qualification now uses 20 ms averaged BEMF amplitude and PLL phase-error
RMS, plus averaged startup phase difference below 1.2 rad, rather than requiring
4500 consecutive instantaneous samples to pass. After that change, a 15 kHz
trial accelerated to approximately 28 Hz before current protection tripped.

The timer log formatter was then replaced by bounded fixed-point text output
in `Fast_Telemetry.hpp`, eliminating floating-point `printf` from the timer ISR.
The following 65-second hardware run reached reference 50 Hz and maintained
estimated speed around 50 Hz without a fault or voltage saturation. The full
capture is `tests/foc_50hz_fastlog_hardware_log.txt`. The `lu` field reports the
previous log ISR execution time in microseconds. Logging still briefly preempts
the main-loop control; this implementation is experimentally exercised, not a
hard real-time or independent tachometer certification.

The current configuration increases the command ceiling and measured-current
trip from 5 A to 10 A at the user's request. Host tests accept 9.9 A and latch
overcurrent above 10 A (10.1 A test input); motor-model and production-build
checks pass. The image was programmed and verified on the connected PIC32.
A fresh 65-second run reached estimated 50 Hz without a fault; telemetry is
in `tests/foc_50hz_10a_hardware_log.txt`. This load only drew about 0.25 A Iq,
so the run does not validate sustained physical operation at 10 A.

## Startup within one second

The current startup minimum is 0.12 s followed by 0.04 s of qualified PLL
quality, replacing the former 3 s / 0.3 s waits. Acceleration uses speed Kp
0.20 and Ki 0.5; at reference 49 Hz the proportional gain returns to the
previously exercised 0.05 to avoid a high-gain steady-speed oscillation.
The 10 A ceiling/trip and observer/current protections remain enabled.

`ms` reports elapsed milliseconds from immediately after `SYS_Initialize`,
including ADC calibration, IPD and open-loop startup. `cl` records first entry
to closed-loop FOC. `t50` records the start of the first continuous 50 ms window
with estimated mechanical speed within 49.5..50.5 Hz. Startup logging is 50 Hz
for the first 1.5 s, then returns to 5 Hz. These short-run timestamps use the
60 MHz 32-bit core counter, which wraps after approximately 71.6 seconds.

The final production image was programmed and verified on hardware, held in
reset for 5 seconds, then released while COM3 was already open to capture
startup. The recorded handoff was `cl=162` ms and target entry was `t50=557`
ms; subsequent telemetry remained near 50 Hz without a fault. The complete
capture is `tests/foc_50hz_fast_start_log.txt`. This confirms the requested
sub-second startup for the exercised load using observer speed, not an
independent tachometer. The host nominal motor model reaches 49.5 Hz at
approximately 0.690 s, and the existing fault/output-limit tests pass.
