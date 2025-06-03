# Robotnik ROS images

This repository contains the documentation for the public Robotnik ROS docker images. These images are used to build the ROS packages, create the Debian packages and serve as base images for the Robotnik software.

## Images

The images are divided in three categories:

| Image type                               | Description                                            |
| ---------------------------------------- | ------------------------------------------------------ |
| [`base`](resources/base/README.md)       | Base image with ROS installed                          |
| [`builder`](resources/builder/README.md) | Image with ROS and the tools to build the ROS packages |
| [`gui`](resources/gui/README.md)         | Image with ROS and GUI tools                           |

The ros distros available are:

| ROS version | ROS distro | Image name |
| ----------- | ---------- | ---------- |
| 1           | Melodic    | `melodic`  |
| 1           | Noetic     | `noetic`   |
| 2           | Humble     | `humble`   |
| 2           | Iron       | `iron`     |
| 2           | Jazzy      | `jazzy`    |
| 2           | Rolling    | `rolling`  |

The images are tagged with the ROS version, type, version or commit hash, and date. For example, `noetic-base-0.1.0-20200818` is the image with ROS1 Melodic, type `base`, version `0.1.0` and date `20200818`. The image without version and date is the latest version of the image.

## Registries

Container registries are used to store the images. The images are stored in the following registry: Docker Hub.

| Registry                                            | Images                         |
| --------------------------------------------------- | ------------------------------ |
| [Docker Hub](https://hub.docker.com/r/robotnik/ros) | `robotnik/ros:<distro>-<type>` |

## Examples

All the examples are in the `examples` folder.

### ROS1

- [Basic](./examples/ros1/basic/README.md)
- [Generate deb files from source](./examples/ros1/source-as-debs/README.md)

### ROS2

- [Basic](./examples/ros2/basic//README.md)
- [Developer workspace](./examples/ros2/devel-workspace/README.md)
- [Multiple domains](./examples/ros2/multiple-domains/README.md)
- [Nvidia container toolkit](./examples/ros2/nvidia-container-toolkit/README.md)
- [Rviz through vnc](./examples/ros2/rviz-vnc/README.md)
- [Rviz web interface](./examples/ros2/rviz-web/README.md)
- [Generate deb files from source](./examples/ros2/source-as-debs/README.md)

## License

Copyright (c) 2025, Robotnik Automation S.L. All rights reserved.

Licensed under the [BSD 2-Clause](./LICENSE) License.
