# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [Unreleased]

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