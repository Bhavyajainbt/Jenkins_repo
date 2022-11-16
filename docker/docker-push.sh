#!/bin/bash

if [ $# -ne 2 ];then
  echo "Please enter both Image name and Image tag name"
  exit 0
else
  IMAGE_REPO_NAME=$1
  IMAGE_TAG=$2
  REPOSITORY_URI="public.ecr.aws/f5k7w3r3/bhavya-repo"
fi

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/f5k7w3r3
docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG
docker push ${IMAGE_REPO_NAME}:${IMAGE_TAG}
