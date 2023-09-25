#!/bin/bash

image_name="robotnik/examples:humble-source-as-debs"
docker build -t ${image_name} --progress=plain .
