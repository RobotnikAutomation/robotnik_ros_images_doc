# RViz on docker container

This example shows how to run RViz in a Docker container.d

## Quick start

To run example, type the following commands:

```bash
cd examples/ros2/nvidia-container-toolkit
docker compose build
docker compose up -d
```

## Details

This example shows how to run GUI app like RViz in a Docker container. There
are several ways to run RViz in a container in linux systems:

- Run container without `--net=host` option, this is the most secure way to run
  RViz in a container, but it requires to mount `/tmp/.X11-unix` to the
  container.

- Run container with `--net=host` option, in this case the network is shared
  between the host and the container. This is the easiest way to run RViz in a
  container, but it is not secure.

On both cases, you will need to set the following environment variables inside
the container before run GUI apps:

- `DISPLAY`: to the value of the `DISPLAY` environment variable in the host.


You can use the [NVIDIA Container Toolkit] to run RViz in a container with GPU
support. To do so, you will need follow the steps below:

1. Select runtime to `nvidia` in `docker-compose.yml` file.
2. Set the follwing environment variables inside the container at startup:
    - `NVIDIA_VISIBLE_DEVICES`: to one or more comma-separated GPU UUIDs, or
       `all` to use all GPUs. Also you can use numbers to select GPUs by index.
    - `NVIDIA_DRIVER_CAPABILITIES`: to one or more comma-separated driver
       capabilities. For RViz, you will need to set `graphics` and `utility`. To
       use all capabilities, set it to `all`.

To get the GPU UUIDs, you can run the following command:

```bash
nvidia-smi --query-gpu=uuid --format=csv,noheader
```

The easiest way to run GUI app in a container is to use the `--net=host` option
without NVIDIA support. See `docker-compose.yaml` for more details.


[NVIDIA Container Toolkit]:
  https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/user-guide.html
