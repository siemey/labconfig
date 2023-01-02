#!/bin/bash
#
# Copy network config file and apply

cp ~/config/scripts/intro/01-netcfg.yaml /etc/netplan/01-netcfg.yaml
netplan apply

echo "> Network reset"

# Rename system

cp ~/config/scripts/intro/hostname /etc/hostname
if grep -Fxd "10.0.0" /etc/hosts
  then
    sed -i '1d' /etc/hosts
fi

echo ">System has been renamed"
echo "..."
echo ">Please reboot with the command 'sudo reboot'"
