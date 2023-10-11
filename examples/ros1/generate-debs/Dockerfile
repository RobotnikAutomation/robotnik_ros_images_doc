ARG base_image="robotnik/ros"
ARG ros_distro=""
FROM ${base_image}:${ros_distro}-builder as builder

# Download source code
RUN --mount=type=bind,\
source=./repos/build.repo.yaml,\
target=/tmp/repos.yaml,ro \
    vcs import \
        --input /tmp/repos.yaml  \
        --shallow

# Generate debian packages
RUN generate_debs.sh
RUN cd debs && tar cvf /tmp/debs.tar.gz *

# Copy tarball to final image
FROM alpine:3.16.2 as output
WORKDIR /data
COPY --from=builder /tmp/debs.tar.gz /data
