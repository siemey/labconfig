#!/bin/bash
#
# Copy network config file and apply

cp ~/config/scripts/intro/node2.yaml /etc/netplan/01-netcfg.yaml
netplan apply

echo "> Network configured"

# Rename system

cp ~/config/scripts/intro/hostname2 /etc/hostname
sed -i '1i\10.0.0.2    node2.local node2' /etc/hosts

echo ">System has been renamed"
echo "..."
echo ">Please reboot with the command 'sudo reboot'"
