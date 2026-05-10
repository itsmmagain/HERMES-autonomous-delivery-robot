# Literature Review Summary

## Research Context
Autonomous mobile robots in logistics and service environments rely on robust localization, safe navigation, and secure interaction mechanisms. For office document delivery, security and reliability are as critical as navigation accuracy.

## Key Topic Areas

### 1. LiDAR-Based SLAM
2D LiDAR SLAM approaches remain practical for indoor office maps due to stable geometry extraction and low computational requirements relative to 3D pipelines.

### 2. ROS 2 Navigation (Nav2)
Nav2 provides modular planning and control for autonomous robots, with Dynamic Window Approach (DWA)-style local planning for dynamic obstacle handling.

### 3. Secure Physical Access
Fail-secure lock mechanisms are recommended where power loss must not result in unauthorized access. Multi-factor local authentication reduces misuse risk.

### 4. Vision-Based Monitoring
Compact deep learning models such as MobileNet-SSD can provide low-latency detection for human proximity and security events on edge devices.

### 5. Differential Drive Control
PID-based wheel velocity control with encoder feedback is widely used for low-cost, robust trajectory execution in indoor AMRs.

## Relevance to HERMES
HERMES combines these validated approaches into one platform optimized for secure, offline, inter-office delivery in constrained indoor environments.
