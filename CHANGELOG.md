# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## [0.6.1] - 2024-12-16
- Updated call versions of external github actions to avoid future deprecation

## [0.6.0] - 2024-08-30
### Added
- `jazzy` distro images.
- `test_workspace.sh` added support for `noetic` distro.
- `ros_entrypoint.d` directory to add custom scripts to be executed on container startup, will be executed in alphabetical order.
- `generate_debs.sh` script now supports `.reduce_parallel_jobs` file to reduce the number of parallel jobs on generating distribution packages.
- Init system `tini` added to `ros_entrypoint.sh` script. All signals are forwarded to the main process instead of forwarding with `trap` in `ros_launcher.sh` script.
- Install `rosmon-core` ros distro version by default on `ros` images, if want to override you can remove the package and install your own.
- Extract load ros environment variables from `ros_entrypoint.sh` script to `env_loader.sh` script to be used by other scripts.
- Added parameters select package to compile or test on `generate_debs.sh` and `test_workspace.sh` scripts.

### Changed
- Updated `rolling` distro into ubuntu `noble`.
- Sudoer configuration moved to `sudoers.d` directory.
- `ros_entrypoint.sh` script now uses `tini` as init system, forwarding signals to the main process and handling zombie processes.
- `generate_debs.sh` script use utc time to generate the package version.
- `virtualgl` package upgraded from `3.1` to `3.1.1`.
- `turbovnc` package upgraded from `3.0.3` to `3.1.1`.
- `GEN_COMMAND` environment variable are overriden if `CMD` container instruction is used.

### Removed
- Deleted `ros_launcher.sh` script, as moved to `ros_entrypoint.sh` script.
- `SIGNAL_TRAP` and `SIGNAL_DESTROY` are not used anymore, as now handled by `tini` init system.

### Fixed
- Fzf installation added `v` tag to the installed version.
- `generate_debs.sh` on one package compilation failed, the script stops.
- `install_pcan.sh` get linux headers from internal repository, instead of host machine.


## [0.5.0] - 2023-12-19
### Added
- Added fastdds package on ROS2 containers allowing, allowing to use it by setting up environment variable `RMW_IMPLEMENTATION=rmw_fastrtps_cpp`
- Added `qt5ct` package at gui container in order to show toolbar icons on QT5 applications
- Added `FAKE_SCREEN` environment variable to allow the use fake or dummy screen on applications that requires it (only on graphical container)
- Added update of docker tools before building on `push-build.yml` github action workflow. 
- Added reuse flag on, `push-build.yml` so other workflow can call it .
- Added `-x, --buildx <ARCH_LIST>` option from `build.sh` script, to select the building architectures, multiarch indicated using comma.  default value `linux/amd64,linux/arm64/v8`
- Added login on docker-hub in order to increase the docker pull rate to 200images/6h
- Added argument `image_prefix` for settings the image prefix for cache default empty on `build.sh`
- Added `-i, --image-prefix` for settings the image prefix for cache default empty if flag used and not defined value is `registry.robotnik.ws/docker.io/`
- Added `build.yaml` compose files for docker compose base building
- Installed `apt-fast` on all images to speed up the apt downloads.
- Added new workflows and actions for faster parallel build

### Changed
- improved source as deb example on ros1 and ros2, now the deb are on the host machine.
- Changed fzf to base image
- Changed powerline to base image and disabled it by default, can be enabled by using environment variable `POWERLINE` to true
- The powerline bash prompt is enabled on the graphical user interface
- Improved `weekly-build.yml` workflow calling `push-build.yml` instead of repeating same workflow.
- Separated the architectures on `push-build.yml` workflow so can build in parallel speeding up the building.
- Specified the use of self-hosted runners tagged `[self-hosted, internal-robotnik, kubernetes]` to enforce the use k8s automatic generated runners on `push-build.yml` workflow
- Specified the use of self-hosted runners tagged `[self-hosted, internal-robotnik, kubernetes]` on `public-doc.yml` workflow so github minutes are not used. 
- Use of ros apt local mirror on `base, builder, gui`
- Script `build.sh` now uses the docker (compose build/buildx bake) style with `docker-compose.yaml`  as configuration file

### Fixed
- Corrected expansion of variables on zenity
- Fixed capture the return code of the command on `ros_launcher.sh`

### Removed
- Removed `-o, --host-network` option from `build.sh` script is specified on the docker-compose.yaml file


##  [0.4.0] - 2023-10-06
### Added
- Fixed architecture hardcoded now is supported `arm64` and `amd64` architectures
- Automatic build of `amd64` and `arm64` architectures (#37)

### Changed
- Removed `-t, --tag` option from `build.sh` script, currently checking the tag from `git` (#37)


##  [0.3.1] - 2023-09-26
### Changed
- All images pull the base image from docker hub before build. (#27)

### Fixed
- ros_launcher return on all subprocess finish (#28)


##  [0.3.0] - 2023-09-25
### Added
- Added `cyclonedds` ros middleware to ros2 images (#26)

### Changed
- Updated examples and documentation (#25)
- Changed to docker hub public repository instead of private.


##  [0.2.1] - 2023-09-02
### Added
- Added `test_workspace.sh` for ros2 (#23)

### Changed
- `compile_workspace.sh`, now shows the output of the compilation (#23)


## [0.2.0] - 2023-08-31
### Added
- Added package `dh-python` on builder
- Added `$HOME/.local/bin` to PATH
- Added healthcheck expansion node name from environment (#16)
- Added `graphical` option to ros launcher (#18)
- Added package `schedtool` on all images (#17)

### Fixed
- `generate_debs.sh` is compiling pure python packages
- Removed specific versions apt requirements files

### Changed
- Rename `ROS_STARTUP_TYPE` to `STARTUP_TYPE` (#19)


## [0.1.0] - 2023-08-18
### Added
- First release.
