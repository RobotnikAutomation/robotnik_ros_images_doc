# Multiple Domains

This a simple example where you two sets of talker-listener, each one with different domain id (0 and 1)

## Usage

```bash
docker compose up
```

## Images

- **ros2-examples:humble-basic**: derived from the robotnik base image, with the cpp and py demo nodes installed.

## Services

- **talker-run/listener-run** (robotnik/examples:humble-basic): runs talker/listener nodes with domain ID 0 using the run approach from the robotnik base image
- **talker-launch/listener-launch** (robotnik/examples:humble-basic): runs talker/listener nodes with domain ID 1 using the launch approach from the robotnik base image
