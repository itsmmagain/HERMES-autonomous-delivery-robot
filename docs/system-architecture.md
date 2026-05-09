# System Architecture

## High-Level Architecture
HERMES uses a dual-controller model:

1. **Raspberry Pi 4 (High-Level Layer)**
   - SLAM and map management
   - Global/local path planning (Nav2)
   - Vision inference (MobileNet-SSD)
   - Mission state machine and event logging

2. **Arduino Mega (Real-Time Layer)**
   - Motor PWM and encoder feedback loops
   - PID velocity control
   - RFID reader and keypad interfacing
   - Solenoid lock actuation logic

## Inter-Controller Interface
- Serial protocol between Raspberry Pi and Arduino
- Command set includes:
  - velocity setpoints
  - vault lock/unlock requests
  - authentication status messages
  - telemetry (encoders, battery estimates, sensor health)

## Security Design Considerations
- Offline-only control plane
- Fail-secure lock default state
- Local authentication at dispatch and delivery points
- Vision-triggered suspicious proximity event flagging

## Functional Data Flow
1. Dispatch request authenticated.
2. Mission generated on Raspberry Pi.
3. Motion setpoints sent to Arduino.
4. Arduino executes PID and returns telemetry.
5. Destination arrival triggers recipient authentication.
6. Vault unlocks only after valid credential sequence.
