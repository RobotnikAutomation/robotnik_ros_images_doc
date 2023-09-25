# Development workspace

This a simple example where you can use a container to develop a robot workspace. As the the workspace is mounted on the host development done will persist after the container is stopped.

## Usage

### Normal

```bash
cd examples/ros2/devel-workspace
docker compose up
```

### With Nvidia

```bash
cd examples/ros2/devel-workspace
docker compose -f docker-compose-nvidia.yaml up
```