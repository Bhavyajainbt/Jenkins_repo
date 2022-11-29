#!/bin/bash

if [ $# -ne 1 ];then
  echo "Please select environment in which the resource has to be deployed."
  exit 0;
env_dir=$1

cd terraform/
terraform init
cd ${env_dir}
terraform apply -auto-approve
