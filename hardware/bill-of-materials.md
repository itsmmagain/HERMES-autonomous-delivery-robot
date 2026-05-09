# Bill of Materials (BOM)

| Subsystem | Component | Example Model | Qty | Notes |
|---|---|---|---:|---|
| Compute | Single-board computer | Raspberry Pi 4 | 1 | High-level autonomy and perception |
| Real-time control | Microcontroller | Arduino Mega 2560 | 1 | Deterministic motor and IO control |
| Navigation sensor | 2D LiDAR | SLAMTEC RPLIDAR A1 | 1 | 360° scanning |
| Drive | DC gear motor + encoder | 12V encoder motor | 2 | Differential drive |
| Motor drive | H-bridge driver | Dual-channel motor driver | 1 | Sized to stall current |
| Power | Battery pack | 12V 10Ah Li-ion | 1 | 2+ hour target runtime |
| Security | RFID module | RC522 | 1 | User identification |
| Security | Keypad | 4x4 matrix keypad | 1 | Second-factor PIN input |
| Security | Lock actuator | Fail-secure solenoid lock | 1 | Locked on power loss |
| Perception | Camera module | USB/CSI camera | 1 | MobileNet-SSD monitoring |
| Chassis | Mechanical frame | Custom/AMR base | 1 | Payload + component mounting |

## Procurement Notes
- Verify motor torque against payload and slope assumptions.
- Select fused/protected battery management path.
- Use secure connectors and strain relief for mobile wiring harnesses.
