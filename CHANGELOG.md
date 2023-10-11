# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Changed
- improved source as deb example on ros1 and ros2, now the deb are on the host machine.

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
