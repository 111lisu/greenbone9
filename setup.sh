#!/bin/bash

echo "---------- START - ansible 2.7--------------"
echo "------ Required VirtualBox, Vagrant --------" 
vagrant up
ansible-playbook setup-openvas.yml   -i inventories/hosts  -D

echo "------------- END Install ------------------"

# ansible-playbook setup-openvas.yml   -i inventories/hosts  -D --tags "openvas-rebuild" -vvv
