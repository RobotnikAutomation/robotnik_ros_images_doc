# Sources as debs packages

This a simple example to generate deb files from a repository in github and install them in an image.

## Usage

```bash
docker compose up
```

## Images

- **robotnik/examples:humble-generate-and-install-debs-from-source**: uses the robotnik builder image to generate deb files from a repository in github and installs them in a robotnik base image.
  * note: repository is parametrized by arguments org/repo/branch (default: RobotnikAutomation/vectornav/master)
  * note: deb files are created during the image creation.

## Services
- main: executes the main launch file from the repository
  * note: package execution is not parametrized, so it tries to run the vectornav driver.
