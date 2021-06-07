#!/bin/bash

RESOURCE_GROUP=capstone_project_2
LOCATION=eastus2
V_NET=capstone_net
SUBNET_NAME=capstone_subnet
INSTANCE_NAME=capstone_instance

#Restarting VM Instance 
echo "Restarting VM instance in $V_NET VPC"
echo "$INSTANCE_NAME" "Restarting"
az vm restart --name "$INSTANCE_NAME"  -g $RESOURCE_GROUP
