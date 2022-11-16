#!/bin/bash

if [ $# -ne 2 ];then
  echo "Please enter both Image name and Image tag name"
  exit 0
else
  IMAGE_REPO_NAME=$1
  IMAGE_TAG=$2
  REPOSITORY_URI="public.ecr.aws/f5k7w3r3/bhavya-repo"
fi

aws ecr-public get-login-password --region us-east-1
echo "First is done"
