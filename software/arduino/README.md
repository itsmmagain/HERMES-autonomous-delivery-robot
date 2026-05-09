# Arduino Firmware Layer

Core firmware responsibilities:
- Encoder acquisition and wheel speed estimation
- PID motor control loop execution
- RFID/keypad event handling
- Solenoid lock control with fail-secure defaults
- Telemetry serialization to Raspberry Pi

Implementation note:
Keep control loops non-blocking and deterministic to protect navigation stability.
