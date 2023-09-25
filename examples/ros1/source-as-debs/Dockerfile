ARG base_image="robotnik/ros"
ARG ros_distro=""
FROM ${base_image}:${ros_distro}-builder as builder

# Download source code
ARG org="RobotnikAutomation"
ARG repo="vectornav"
ARG branch="master"
RUN git clone -b ${branch} https://github.com/${org}/${repo}.git ${USER_WORKSPACE}/src/${repo}

# Generate debian packages
RUN generate_debs.sh


# Caution: this is a multi-stage build, the following stage will be the final image.
# builder must not included in the final image.
FROM ${base_image}:${ros_distro}-base

# Mount debian packages from previous stage and install all of them
USER root
RUN --mount=type=bind,from=builder,source=${USER_WORKSPACE}/debs,target=/tmp/debs \
    apt update && \
    apt-get install -y --no-install-recommends \
        /tmp/debs/*.deb \
    && rm -rf /var/lib/apt/lists/*

USER $USER_NAME


# ENIRONMENT VARIABLES

ENV STARTUP_TYPE "launch"
# package to launch
ENV ROS_BU_PKG "vectornav"
# script of program to launch with all its arguments
ENV ROS_BU_LAUNCH "vectornav.launch"

### Required nodes to startup
#### if true check if the NODES_TO_CHECK nodes are started up before starting the program
ENV CHECK_NODES "false"
#### space separted node list with full namespace
ENV NODES_TO_CHECK ""
ENV HEALTHCHECK_NODES ""
