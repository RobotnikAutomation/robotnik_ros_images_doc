# Base image

This image contains ROS installed. It is used as base image for the other images.

## Environment variables

The following environment variables are defined in the image:

| Variable | Description |
|----------|-------------|
| `USER_NAME` | User name of the user with sudo privileges |
| `USER_HOME` | Home directory of the user |
| `USER_WORKSPACE` | ROS Workspace directory of the user |
| `ROS_DISTRO` | ROS distro |

The following environment variables are defined in the image and can be used to configure the image:

### Startup configuration

| Variable | Description | Default value |
|----------|-------------|---------------|
| `SIGNAL_TRAP` | Signal received by the entrypoint script to stop the container divided by `:` | `SIGTERM:SIGINT` |
| `SIGNAL_DESTROY` | Signal sent to the child processes when the container is stopped | `SIGINT` |

### Launch configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_SETUP_FILES` | Additional setup files to source divided by `:` | `""` |
| `STARTUP_TYPE` | Type of startup, one of `generic`, `launch`, `run`, `rosmon`, `graphical` | `generic` |
| `ROS_BU_PKG` | ROS package to bring up | `""` |
| `ROS_BU_LAUNCH` | ROS launch file to bring up | `""` |
| `GEN_COMMAND` | Generic command to run | `sleep infinity` |

### Requirements configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `CHECK_NODES` | Boolean to check if the nodes are running | `false` |
| `NODES_TO_CHECK` | Space separted node list with full namespace | `""` |

### Healthcheck configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `HEALTHCHECK_EXEC` | Script or command to execute to check if the container is healthy | `ros_healthcheck.sh` |
| `HEALTHCHECK_NODES` | Space separated node list with full namespace | `""` |

### ROS1 configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_MASTER_URI` | URI of the ROS master | None |
| `ROS_HOSTNAME` | Hostname of the ROS node | None |
| `ROS_IP` | IP of the ROS node | None |

### ROS2 configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_DOMAIN_ID` | Domain ID of the ROS node | `0` |
| `RMW_IMPLEMENTATION` | RMW implementation | `rmw_fastrtps_cpp` |
| `RCUTILS_COLORIZED_OUTPUT` | Enable colorized output | `1` |
| `RCUTILS_LOGGING_USE_STDOUT` | Enable logging to stdout | `1` |
| `RCUTILS_LOGGING_BUFFERED_STREAM` | Enable buffered logging | `1` |
| `RCUTILS_CONSOLE_OUTPUT_FORMAT` | Format of the console output | None |

## Installed scripts

The following scripts are installed in the image:

| Script | Description |
|--------|-------------|
| `ros_healthcheck.sh` | Script to check if the container is healthy |
| `ros_entrypoint.sh` | Entrypoint script to start the container |
| `ros_launcher.sh` | Script to launch the ROS nodes |

## Installed packages

Please refer to requirements folder for more information about the installed packages.
