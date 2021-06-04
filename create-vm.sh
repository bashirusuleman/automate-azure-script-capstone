#!/bin/bash

RESOURCE_GROUP=capstone_project_2
LOCATION=eastus2
VM_SIZE=Standard_B1s
V_NET=capstone_net
ADDRESS_PREFIX=10.0.0.0/16
SUBNET_NAME=capstone_subnet
SUBNET_PREFIX=10.0.0.0/24
COUNT=2
IMAGE=UbuntuLTS
INSTANCE_NAME=capstone_instance
ADMIN_PASSWORD=adminadmin123!
ADMIN_USER=linuxadmin

# Creating a Resource group
echo "Creating a Resource group in $LOCATION"
echo "az group create  --resource-group $RESOURCE_GROUP --location $LOCATION"
#az group create  --resource-group $RESOURCE_GROUP --location $LOCATION

# Create a VPC & Subnet
echo "Creating a VNET $V_NET & Subnet $SUBNET_NAME"
az network vnet create -g $RESOURCE_GROUP  -n $V_NET --address-prefix $ADDRESS_PREFIX \
	             --subnet-name $SUBNET_NAME --subnet-prefix $SUBNET_PREFIX

# Create VM Instance with n counts
echo "Creating VM instance in $V_NET VPC"
az vm create --name $INSTANCE_NAME -g $RESOURCE_GROUP --image $IMAGE \
	 --size $VM_SIZE --vnet-name $V_NET --subnet $SUBNET_NAME --count $COUNT \
	  --admin-password  $ADMIN_PASSWORD  --admin-username  $ADMIN_USER
