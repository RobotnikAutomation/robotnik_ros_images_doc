# Development workspace

This a simple example where you can use a container to develop a robot workspace. As the the workspace is mounted on the host development done will persist after the container is stopped.

## Usage

### Normal

```bash
cd examples/ros2/devel-workspace
docker compose up
```

### With Nvidia

For cases where you want to leverage Nvidia GPUs, you can use the following command:

```bash
cd examples/ros2/devel-workspace
docker compose -f docker-compose-nvidia.yaml up
```

> **Note**: Make sure you have the NVIDIA Container Toolkit installed and configured on your host machine to use the GPU. See [NVIDIA example](../nvidia-container-toolkit/) for more details.
