#!/bin/bash

image_name="robotnik/examples:humble-generate-and-install-debs-from-source"
docker build -t ${image_name} --progress=plain .
