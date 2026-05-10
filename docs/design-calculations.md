# Design Calculations

This document captures first-pass engineering calculations for drivetrain sizing, battery endurance, and mission feasibility. Values should be updated after prototype measurements.

## 1. Assumptions
- Robot mass (base + electronics + enclosure): **15 kg**
- Maximum payload: **5 kg**
- Total design mass: **20 kg**
- Wheel radius: **0.05 m** (100 mm diameter)
- Number of drive wheels: **2**
- Cruising speed target: **0.6 m/s**
- Rolling resistance coefficient (indoor floor): **0.02**
- Gravitational acceleration: **9.81 m/s²**
- Drivetrain efficiency estimate: **70%**

## 2. Rolling Force Requirement
Rolling force:

\[
F_{rr} = C_{rr} \cdot m \cdot g
\]

\[
F_{rr} = 0.02 \cdot 20 \cdot 9.81 = 3.924\ \text{N}
\]

Design margin for starts/stops and minor surface variation (×2):

\[
F_{design} \approx 7.85\ \text{N}
\]

## 3. Wheel Torque Requirement
Total wheel torque:

\[
\tau_{total} = F_{design} \cdot r = 7.85 \cdot 0.05 = 0.3925\ \text{N·m}
\]

Per wheel (2-wheel drive):

\[
\tau_{wheel} = \frac{\tau_{total}}{2} = 0.196\ \text{N·m}
\]

Including drivetrain losses and control margin (~3×):

\[
\tau_{wheel,selected} \ge 0.6\ \text{N·m}
\]

This supports selecting 12V geared motors with continuous torque above 0.6 N·m and sufficient stall margin.

## 4. Wheel Speed / RPM Requirement
Wheel angular speed:

\[
\omega = \frac{v}{r} = \frac{0.6}{0.05} = 12\ \text{rad/s}
\]

RPM conversion:

\[
\text{RPM} = \omega \cdot \frac{60}{2\pi} \approx 114.6\ \text{RPM}
\]

Target motor output range after gearing: **120–150 RPM**.

## 5. Battery Endurance Check
Battery nominal energy:

\[
E_{bat} = V \cdot Ah = 12 \cdot 10 = 120\ \text{Wh}
\]

Usable energy (80% depth-of-use for longevity):

\[
E_{usable} \approx 96\ \text{Wh}
\]

Estimated average load budget:
- Raspberry Pi + LiDAR + camera + logic: **15 W**
- Motor average during cruise/turns: **25 W**
- Lock/auxiliaries (average): **5 W**

Total average power:

\[
P_{avg} \approx 45\ \text{W}
\]

Runtime estimate:

\[
t = \frac{E_{usable}}{P_{avg}} = \frac{96}{45} \approx 2.13\ \text{hours}
\]

This supports the project requirement of **2+ hours** runtime.

## 6. Mission Capacity Estimate
If average mission distance is 250 m at 0.6 m/s (including pauses, effective 0.4 m/s):

\[
t_{mission} = \frac{250}{0.4} = 625\ \text{s} \approx 10.4\ \text{min}
\]

At ~2.13 h runtime:

\[
N_{missions} \approx \frac{128\ \text{min}}{10.4\ \text{min}} \approx 12
\]

Conservative practical target after reserves and peak-load effects: **8–10 missions per charge cycle**.

## 7. Control Loop Sampling Guideline
- Encoder update and wheel PID loop: **50–100 Hz**
- High-level velocity command update from ROS 2: **10–20 Hz**
- Vision inference loop (MobileNet-SSD on edge): **5–15 FPS** depending on model/input size

These rates maintain stable low-level control while allowing high-level autonomy and monitoring.

## 8. Verification Plan
The above values are analytical estimates and must be validated experimentally:
1. Measure real current draw in idle, cruise, and peak maneuver conditions.
2. Perform torque and speed checks under full payload.
3. Recompute runtime from measured Wh consumption per mission.
4. Update this document with measured data and corrected safety factors.
