#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Enter stack name, template file name to create and region name. "
    exit 0
else
    STACK_NAME=$1
    TEMPLATE_NAME=$2
    REGION=$3
fi

if [[ $TEMPLATE_NAME != *.yaml ]]; then
    echo "CloudFormation template $TEMPLATE_NAME does not exist. Make sure the extension is *.yaml and not (*.yml)"
    exit 0
fi

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE_NAME \
  --region $REGION \
