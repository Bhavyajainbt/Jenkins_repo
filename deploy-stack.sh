if [ $# -ne 4 ]; then
    echo "Enter stack name, parameters file name, template file name to create and enter region name. "
    exit 0
else
    STACK_NAME=$1
    PARAMETERS_FILE_NAME=$2
    TEMPLATE_NAME=$3
    REGION=$4
fi

if [[ $TEMPLATE_NAME != *.yaml ]]; then
    echo "CloudFormation template $TEMPLATE_NAME does not exist. Make sure the extension is *.yaml and not (*.yml)"
    exit 0
fi

if [[ $PARAMETERS_FILE_NAME != *.properties ]]; then
    echo "CloudFormation parameters $PARAMETERS_FILE_NAME does not exist"
    exit 0
fi
