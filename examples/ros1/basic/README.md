# Basic

This a simple example where you have build a talker-listener example

## Usage

```bash
docker compose up
```

## Images

**ros1-basic-core**, **ros1-basic-talker**, **ros1-basic-listener**: three identical images derived from robotnik base image with the roscpp tutorials installed

## Services

  - **core** (ros1-basic-core): runs ROS Core
  - **talker** (ros1-basic-talker): runs talker node
  - **listener** (ros1-basic-listener): runs listener node
