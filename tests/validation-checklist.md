# Validation Checklist

## A. Navigation and Mobility
- [ ] Map generation quality validated in representative office space
- [ ] Goal-to-goal autonomous delivery success rate recorded
- [ ] Obstacle avoidance behavior verified for dynamic pedestrians

## B. Security and Access Control
- [ ] Vault remains locked during power interruption test
- [ ] Valid RFID + PIN unlock sequence passes
- [ ] Invalid or partial credential sequence denied

## C. Control and Performance
- [ ] PID wheel speed tracking stable at low/medium/high setpoints
- [ ] Payload test (up to 5 kg) completed without control instability
- [ ] Battery endurance recorded for 2+ hour target

## D. Vision Monitoring
- [ ] MobileNet-SSD proximity detections validated in office lighting
- [ ] False alert behavior characterized and documented

## E. System Integration
- [ ] Raspberry Pi ↔ Arduino communication reliability measured
- [ ] End-to-end dispatch-to-delivery workflow demonstrated
