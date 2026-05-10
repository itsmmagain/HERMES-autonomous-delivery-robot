# HERMES: Autonomous Mobile Robot for Secure Inter-Office Document Delivery

HERMES is an academic research project from the Ahmadu Bello University Mechatronics Engineering program. It targets secure, offline (air-gapped), autonomous delivery of sensitive inter-office documents.

## Mission
Build a reliable autonomous mobile robot that can navigate office environments while keeping document payloads physically secure and access-controlled.

## Core Capabilities
- **Air-gapped operation** (no Wi-Fi/cloud dependency)
- **360° 2D LiDAR SLAM** for localization and mapping
- **ROS 2 Navigation Stack (Nav2)** obstacle avoidance (DWA-based local planning)
- **Fail-secure electromechanical vault** with RFID + keypad authentication
- **Vision monitoring** (MobileNet-SSD) for unauthorized proximity detection
- **Dual-controller architecture** (Raspberry Pi 4 + Arduino Mega)

## Technical Snapshot
- **Payload**: 5 kg
- **Battery**: 12V 10Ah Li-ion (2+ hours)
- **Drive**: Differential 12V DC gear motors + encoders + PID
- **LiDAR**: SLAMTEC RPLIDAR A1
- **Auth**: RC522 RFID + 4x4 matrix keypad
- **Compute**: Ubuntu 22.04 + ROS 2 Humble + Python/C++

## Repository Structure
- [`docs/`](docs/README.md): proposal, literature review, specifications, architecture, timeline
- [`hardware/`](hardware/README.md): BOM, circuit documentation, CAD placeholders
- [`software/`](software/README.md): ROS 2, Arduino firmware, Python security modules
- [`tests/`](tests/README.md): validation procedures and baseline repository checks
- [`research/`](research/README.md): references and benchmark notes

## 12-Week Development Timeline
1. Weeks 1–2: Literature review and proposal defense
2. Weeks 3–4: Procurement and mechanical/electrical assembly
3. Weeks 5–6: Circuit integration and microcontroller wiring
4. Weeks 7–8: ROS 2, SLAM, and Nav2 integration
5. Weeks 9–10: RFID, keypad, vision, and PID implementation
6. Weeks 11–12: Full-system testing, office trials, and final defense

## Getting Started
1. Read [`docs/project-proposal.md`](docs/project-proposal.md)
2. Review [`docs/design-specifications.md`](docs/design-specifications.md)
3. Review engineering assumptions and computations in [`docs/design-calculations.md`](docs/design-calculations.md)
4. Check hardware bill of materials in [`hardware/bill-of-materials.md`](hardware/bill-of-materials.md)
5. Follow software module breakdown in [`software/README.md`](software/README.md)

## Contributing
See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## License
This repository is released under the [MIT License](LICENSE).
