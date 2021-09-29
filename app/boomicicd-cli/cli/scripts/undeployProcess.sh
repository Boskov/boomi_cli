#!/bin/bash
source bin/common.sh
# get atom id of the by atom name
# mandatory arguments
ARGUMENTS=(deploymentId)
JSON_FILE=json/undeployProcess.json
URL=$baseURL/DeployedPackage/"${ARGUMENTS[0]}"
id=deploymentId
exportVariable=deploymentId

inputs "$@"
if [ "$?" -gt "0" ]
then
        return 255;
fi

createJSON
 
callAPI
 
clean
if [ "$ERROR" -gt "0" ]
then
   return 255;
fi