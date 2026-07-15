# Ultrasonic Radar System

## Overview

This project is an Arduino-based ultrasonic radar system developed for real-time object detection and distance measurement.

The HC-SR04 ultrasonic sensor is mounted on an SG90 servo motor to scan the surrounding area at different angles. The Arduino Uno processes the distance and angular data and sends it to Processing software for graphical radar visualization.

## Features

- Real-time object detection
- Distance measurement using ultrasonic sensing
- Angular scanning using a servo motor
- Radar-style graphical visualization
- Serial communication between Arduino and Processing
- Real-time distance and angle monitoring

## Hardware Components

| Component | Model / Specification | Purpose |
|---|---|---|
| Microcontroller | Arduino Uno (ATmega328P) | Main system controller |
| Ultrasonic Sensor | HC-SR04 | Object detection and distance measurement |
| Servo Motor | SG90 | Rotates the ultrasonic sensor |
| USB Cable | USB Type-B | Arduino programming and serial communication |
| Jumper Wires | Male-to-Male | Hardware connections |
| Breadboard | Standard Breadboard | Circuit prototyping |

## Software Used

- Arduino IDE
- Processing IDE

## System Working

1. The SG90 servo motor rotates the HC-SR04 ultrasonic sensor across a defined angular range.
2. The HC-SR04 transmits ultrasonic waves and receives the reflected signal from nearby objects.
3. The Arduino Uno calculates the distance of the detected object.
4. The Arduino combines the measured distance with the current servo angle.
5. Angle and distance data are transmitted through serial communication.
6. Processing software receives the serial data.
7. A radar-style graphical interface displays detected objects based on their angle and distance.

## Technologies and Concepts

- Arduino Programming
- Embedded Systems
- Ultrasonic Sensing
- Sensor Interfacing
- Servo Motor Control
- Serial Communication
- Real-Time Data Visualization

## Applications

- Object detection systems
- Obstacle detection
- Robotics
- Autonomous systems
- Distance monitoring
- Security and surveillance systems

## My Contribution

- Interfaced the HC-SR04 ultrasonic sensor with Arduino Uno
- Controlled the SG90 servo motor for angular scanning
- Implemented distance measurement logic
- Integrated serial communication
- Used Processing software for radar visualization
- Tested and debugged the hardware system

## Project Status

Completed as an academic embedded systems project.

## Author

**B. Akshya Priya**

Electronics and Communication Engineering
