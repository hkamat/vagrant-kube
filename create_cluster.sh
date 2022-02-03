#! /bin/bash

# Lets trigger the cluster vms one after another
echo "Triggering vagrant for primary server."
vagrant up primary

echo "******************************"

echo "Triggering vagrant for Nodes."
vagrant up node01
vagrant up node02
