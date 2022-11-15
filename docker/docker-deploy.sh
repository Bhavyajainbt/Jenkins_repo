#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Type the Name of docker Image"
  exit 0
else
  IMAGE_NAME = $1
  sudo docker build -t $IMAGE_NAME .
fi
