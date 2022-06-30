# Sonar Driver Interfaces
This ROS 2 package contains the interfaces for the [Sonar Driver](https://github.com/bastianschildknecht/sonar_driver) ROS 2 package.

## Message Types
- **SonarConfiguration:** Configuration message for an imaging sonar containing many useful parameters. This message
    is sent by the sonar driver containing the current configuration of the sonar system.
- **SonarConfigurationChange:** Message containing the new configuration of the sonar system. This message is sent
    by a client to change the configuration of the sonar system.