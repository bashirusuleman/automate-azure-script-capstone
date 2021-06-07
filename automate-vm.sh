#!/bin/bash
ACTION=$1

if [[ $ACTION -eq 1 ]]
then 
   ./create-vm.sh
elif [[ $ACTION -eq 2 ]]
then 
   ./restart-vm.sh
else 
   ./stop-vm.sh
fi
