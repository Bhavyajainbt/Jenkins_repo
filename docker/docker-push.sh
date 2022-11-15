#!/bin/bash

if [ $# -ne 2 ];then
  echo "Please enter both Image name and Image tag name"
  exit 0
else
  IMAGE_REPO_NAME=$1
  IMAGE_TAG=$2
  REPOSITORY_URI="public.ecr.aws/f5k7w3r3/bhavya-repo"
fi

docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG
