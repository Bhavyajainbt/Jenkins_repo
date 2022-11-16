#!/bin/bash

if [ $# -ne 3 ];then
  echo "Please enter both Image name and Image tag name"
  exit 0
else
  IMAGE_REPO_NAME=$1
  IMAGE_TAG=$2
  REPOSITORY_URI=$3
fi

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 190698788805.dkr.ecr.us-east-1.amazonaws.com
docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:${IMAGE_TAG}
docker push ${REPOSITORY_URI}:${IMAGE_TAG}
