# Base image

This image contains ROS installed and other utilities from Robotnik. It is used as base image for the other images. It can be created for the different ROS distros.

## Environment variables

### Read-only Environment variables

The following environment variables are defined during the build process of the image.

The user can use them to retrieve information about the image and its environment. They are read-only and must not be modified by the user.

| Variable | Description | Value |
|----------|-------------|-------|
| `USER_NAME` | User name of the user with sudo privileges | `robot` |
| `USER_HOME` | Home directory of the user | `/home/robot` |
| `USER_WORKSPACE` | ROS Workspace directory of the user | `/home/robot/robot_ws` |
| `ROS_DISTRO` | ROS distro | *actual ros distro* |

### Configurable Environment variables

The following environment variables are used to configure the behavior of the derived images. They can be set by the end user either during the build process of the derived images (i.e., in the Dockerfile) or when creating the container (i.e., in the Docker Compose configuration).

#### Launch configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_SETUP_FILES` | Additional setup files to source divided by `:` | `""` |
| `STARTUP_TYPE` | Type of startup, one of `generic`, `launch`, `run`, `rosmon`, `graphical` | `generic` |
| `ROS_BU_PKG` | ROS package to bring up | `""` |
| `ROS_BU_LAUNCH` | ROS launch file to bring up | `""` |
| `GEN_COMMAND` | Generic command to run | `sleep infinity` |

**Note:** The `STARTUP_TYPE`, `ROS_BU_PKG`, `ROS_BU_LAUNCH`, and `GEN_COMMAND` variables are ignored if command is passed to the container.

#### Interface configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `POWERLINE` | Use of the powerline prompt on bash | `false` |

#### Requirements configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `CHECK_NODES` | Boolean to check if the nodes are running | `false` |
| `NODES_TO_CHECK` | Space separted node list with full namespace | `""` |

#### Healthcheck configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `HEALTHCHECK_EXEC` | Script or command to execute to check if the container is healthy | `ros_healthcheck.sh` |
| `HEALTHCHECK_NODES` | Space separated node list with full namespace | `""` |

#### ROS1 configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_MASTER_URI` | URI of the ROS master | None |
| `ROS_HOSTNAME` | Hostname of the ROS node | None |
| `ROS_IP` | IP of the ROS node | None |

#### ROS2 configuration
| Variable | Description | Default value |
|----------|-------------|---------------|
| `ROS_DOMAIN_ID` | Domain ID of the ROS node | `0` |
| `RMW_IMPLEMENTATION` | RMW implementation | `rmw_cyclonedds_cpp` |
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
| `env_loader.sh` | Script to load ROS environment variables |

## Custom entrypoint scripts

All scripts in the `ros_entrypoint.d` directory are executed in alphabetical order. The scripts must be executable and have the `.sh` extension.

## Installed packages

The resulting image installs the packages listed in two files within the `requirements` folder: `common.txt` and the file corresponding to the current ROS distro (humble, jazzy, etc.).