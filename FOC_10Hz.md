# Experimental sensorless FOC at 600 rpm

Historical 10 Hz configuration and validation. Current settings are documented
in `FOC_50Hz.md`.

`src/main.cpp` calls `SLBL_System::Vector_Control()` after the existing IPD.
The target is **mechanical 10 Hz / 600 rpm**, or electrical 70 Hz with 7 pole pairs.

The existing 3 Hz open-loop startup runs for at least 3 seconds. The BEMF PLL
must track with sufficient amplitude, phase agreement and speed agreement for
0.3 seconds before the controller switches to closed-loop FOC. Failure to lock
within 15 seconds latches a fault. After switching, the speed reference ramps
at 1 mechanical Hz/s from 3 Hz to 10 Hz.

The controller uses a BEMF PLL, compensation for the 200 Hz discrete LPF,
positive-rotation rotor angle `BEMF angle - pi/2`, Park/inverse Park transforms,
Id reference zero, d/q current PI and a 1 kHz speed PI. PI integrators are
initialized from the startup operating point and include saturation handling.

Initial limits and assumptions in `SenseLess_BL_System.X/Sensorless_FOC.hpp`:

- 30 kHz sampling, 7 pole pairs, positive rotation.
- 1 A phase-peak Iq command, 3 A measured-current trip.
- Voltage-vector command limited to 4.8 in the existing 12 V PWM convention.
- Current PI uses the existing 296 uH and 0.64 ohm model, nominal 100 Hz bandwidth.
- Power-invariant observer currents are converted to amplitude-invariant FOC currents.
- The existing PWM command scaling and observer voltage model are retained;
  actual phase voltage and real-time execution timing have not been calibrated here.

UART reports about 5 lines/s:

```text
st=1,flt=0,hz=10.000,ref=10.000,id=...,iq=...,iqr=...
```

`hz` is observer-estimated mechanical speed, not an independent tachometer.
`st`: 0=startup, 1=closed loop, 2=latched fault.
`flt`: 0=none, 1=startup timeout, 2=observer lost, 3=overcurrent, 4=invalid input.
Fault handling overrides all six gate outputs low, matching the existing driver
fault handler; reset is required to restart. UART float formatting still runs
in the timer interrupt at the reduced reporting rate; hard real-time timing
must be checked on hardware.

## Validation

Production HEX builds with MPLAB X 6.35 / XC32 5.10. Host tests exercise a
PMSM current/mechanical model with half-scale PWM voltage and noisy BEMF angle,
startup/closed-loop handoff, 10 Hz tracking, output limits, startup timeout,
loss of BEMF, invalid input and latched overcurrent. The model supplies a
synthetic BEMF angle; it does not validate the physical SMO or gate-drive timing.

The production HEX was programmed and verified on the connected
PIC32MK0512MCJ048 using MPLAB SNAP, then released from reset. After the user
closed their serial monitor, an 18-second COM3 / 115200 baud capture confirmed
closed-loop state `st=1`, no latched fault (`flt=0`) and estimated mechanical
speed near 10 Hz. The captured data is in `tests/foc_hardware_log.txt`.
This is observer speed telemetry; no independent tachometer measurement was made.

PowerShell host test command:

```powershell
$env:PATH = 'C:/msys64/ucrt64/bin;' + $env:PATH
& 'C:/msys64/ucrt64/bin/g++.exe' -std=c++11 -O2 -Wall -Wextra -pedantic -I SenseLess_BL_System.X tests/test_sensorless_foc.cpp -o tests/test_sensorless_foc.exe
& './tests/test_sensorless_foc.exe'
```
