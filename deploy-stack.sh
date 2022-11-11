if [ $# -ne 5 ]; then
    echo "Enter stack name, parameters file name, template file name to create, set changeset value (true or false), and enter region name. "
    exit 0
else
    STACK_NAME=$1
    PARAMETERS_FILE_NAME=$2
    TEMPLATE_NAME=$3
    CHANGESET_MODE=$4
    REGION=$5
fi
