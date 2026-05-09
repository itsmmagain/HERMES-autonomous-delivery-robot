# ROS 2 Layer

Suggested package split:
- `hermes_bringup`: launch files, parameters, and lifecycle orchestration
- `hermes_navigation`: Nav2 configuration and route definitions
- `hermes_description`: robot URDF/Xacro and sensor transforms
- `hermes_interfaces`: custom messages/services for MCU bridge

Key responsibilities:
- SLAM and localization
- Path planning and obstacle avoidance
- Mission state control
