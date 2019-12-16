#!/bin/bash

echo "---------- START - ansible 2.7--------------"
echo "-------------- PVE Server ------------------" 
ansible-playbook setup-openvas-proxmox.yml -i inventories/hosts -D -vvv

echo "------------- END Install ------------------"
# ansible-playbook setup-openvas.yml   -i inventories/hosts  -D --tags "openvas-rebuild" -vvv
