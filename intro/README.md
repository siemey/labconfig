## Node names and network config

Version 1 (Jan-23)

* Names are 'node1' and 'node2'
* Renaming uses:
  * Hard-coding for /etc/hostname
  * sed replacement for /etc/hosts
* Addresses are 10.0.0.1 and 10.0.0.2
  * YAML files are hard-coded
* Runnable scripts are:
  * reset-node.sh -- revert config to default name (ubuntu-micro) and DHCP networking
  * setup-node1.sh -- rename node to node1 / set address to 10.0.0.1
  * setup-node2.sh -- rename node to node2 / set address to 10.0.0.2
