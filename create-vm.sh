#!/bin/bash

RESOURCE_GROUP=capstone_project_2
LOCATION=eastus2
VM_SIZE=Standard_B1s
V_NET=capstone_net
ADDRESS_PREFIX=10.0.0.0/16
SUBNET_NAME=capstone_subnet
SUBNET_PREFIX=10.0.0.0/24
IMAGE=UbuntuLTS
INSTANCE_NAME=capstone_instance
ADMIN_PASSWORD=adminadmin123!
ADMIN_USER=linuxadmin


# Create VM Instance with n counts
echo "Creating VM instance in $V_NET VPC"
az vm create --name $INSTANCE_NAME -g $RESOURCE_GROUP --image $IMAGE \
	 --size $VM_SIZE --vnet-name $V_NET --subnet $SUBNET_NAME  \
	  --admin-password  $ADMIN_PASSWORD  --admin-username  $ADMIN_USER
