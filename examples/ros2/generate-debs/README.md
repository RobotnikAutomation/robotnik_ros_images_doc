# Generate deb packages

This a simple example to create deb packages from the repositories listed in a file and copies them to the host machine.

It uses multistage builds:
- the first stage builds the deb packages with the robotnik builder image,
- the second stage copies the deb packages in a alpine lean image.

## Usage

```bash
docker compose up --build
```

This example has the Vectornav driver (https://github.com/RobotnikAutomation/vectornav) listed in the **repos/build.repo.yaml** file.
The debian files should appear on the output folder.


## Images

- **robotnik/examples:humble-generate-debs**: uses the robotnik builder image to generate deb files from repositories listed in **repos/build.repo.yaml**, using vcs format.

  * note: deb files are created during the image creation.

## Services

- **main** (robotnik/examples:humble-generate-debs): saves deb files in the **output** folder of the host filesystem
    - note: deb files were created during the image creation.
    - note: the output folder is mounted as a volume in the container, allowing the service to access the host filesystem.
