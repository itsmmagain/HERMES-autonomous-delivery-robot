# Design Specifications

## 1. Mechanical Requirements
- Payload capacity: **5 kg**
- Platform type: differential-drive
- Chassis stability: safe turning under full payload
- Enclosure: lockable vault with guided document compartment

## 2. Electrical Requirements
- Battery: **12V 10Ah Li-ion**
- Runtime target: **2+ hours**
- Motor supply: regulated 12V drive path
- Logic rails: isolated/regulated rails for control electronics

## 3. Navigation and Control
- Sensor: **RPLIDAR A1** (360°, 2D)
- Mapping/localization: ROS 2 SLAM stack
- Navigation: ROS 2 Nav2 with dynamic obstacle avoidance
- Motion control: encoder-based wheel PID loops

## 4. Security Requirements
- Authentication factors: RC522 RFID + 4x4 keypad
- Vault behavior: **fail-secure** (remains locked on power loss)
- Data/network posture: **air-gapped offline operation**
- Event handling: local alerts for unauthorized proximity attempts

## 5. Software Platform
- SBC: Raspberry Pi 4 (high-level autonomy and vision)
- MCU: Arduino Mega (real-time motor and IO control)
- OS/Framework: Ubuntu 22.04, ROS 2 Humble
- Languages: Python, C++, Arduino C

## 6. Validation Targets
- Delivery success across defined office routes
- Reliable localization without network dependencies
- Correct lock/unlock behavior for authorized/unauthorized inputs
- Stable closed-loop velocity tracking under payload
