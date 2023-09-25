#!/bin/bash

image_name="robotnik/examples:noetic-source-as-debs"
docker build -t ${image_name} --progress=plain .
