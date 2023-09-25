# GUI image

This image is used to run the GUI applications. It is based on the [base image](../base/README.md) and adds the tools to run the GUI applications and the VNC server.

## Environment variables

The following environment variables are defined in the image:

| Variable | Description |
|----------|-------------|
| `VNC_XSTARTUP_SCRIPT` | Path to the script to run when the VNC server starts |
| `VNC_COMMAND` | Command to run when the VNC server starts |
| `VNC_RFBPORT` | Port of the VNC server |

### VNC configuration

| Variable | Description | Default value |
|----------|-------------|---------------|
| `VNC_PASSWORD` | Password of the VNC server | `""` |
| `VNC_GEOMETRY` | Geometry of the VNC server | None |
| `GUI_ZENITY_TEXT` | Text to display in the zenity window | `"Robotnik ROS \${ROS_DISTRO} GUI"` |
| `GUI_COMMAND` | Command to run in the zenity window | `"ros_launcher.sh"` |

## Installed scripts

The following scripts are installed in the image:

| Script | Description |
|--------|-------------|
| `vnc_command.sh` | Script to run the command |
| `vnc_launcher.sh` | Script to launch the VNC server |

## Installed packages

Please refer to requirements folder for more information about the installed packages.
