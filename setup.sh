#!/bin/bash

echo "---------------- START ---------------------"

vagrant up
ansible-playbook setup-openvas.yml   -i inventories/hosts  -D

echo "---------------- END -----------------------"

