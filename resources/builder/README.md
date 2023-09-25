# Builder image

This image is used to build the ROS packages. It is based on the [base image](../base/README.md) and adds the tools to build the ROS packages.

## Environment variables

The following environment variables are defined in the image:

| Variable | Description |
|----------|-------------|
| `LROSDEP_FILE` | Path to the list of packages for rosdep |
| `LROSDEP_LIST` | Path to list inserted in the rosdep |

## Installed scripts

The following scripts are installed in the image:

| Script | Description |
|--------|-------------|
| `compile_workspace.sh` | Script to compile the entire workspace |
| `generate_debs.sh` | Script to generate the debian packages, -h for more information |
| `generate_whitelist.sh` | Script to generate the whitelist |
| `local_deps.sh` | Script add the local dependencies to rosdep |
| `install_pcan.sh` | Script to install the PCAN driver |

## Installed packages

Please refer to requirements folder for more information about the installed packages.
