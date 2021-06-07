#!/bin/bash

RESOURCE_GROUP=capstone_project_2
LOCATION=eastus2
V_NET=capstone_net
SUBNET_NAME=capstone_subnet
INSTANCE_NAME=capstone_instance

#Stopping VM Instance 
echo "Stopping VM instance in $V_NET VPC"
echo "${INSTANCE_NAME}" "Stopping....."
az vm stop --name "${INSTANCE_NAME}"  -g $RESOURCE_GROUP
az vm deallocate --name "${INSTANCE_NAME}" -g $RESOURCE_GROUP
