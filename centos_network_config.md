# CentOS 7 Network Configuration - Static IP Configuration

1. Open the configuration file for your network interface.

```
vi /etc/sysconfig/network-scripts/ifcfg-eth0
```

2. Add the following settings to the file:

```
DEVICE=eth0
ONBOOT=yes
BOOTPROTO=static
#HWADDR="00:21:70:10:7E:CD"

IPADDR=192.168.80.26
NETMASK=255.255.255.0
GATEWAY=192.168.80.1

#HOSTNAME=
DNS1=192.168.80.1
```

3. Restart the network interface.

```
ifdown eth0
ifup eth0
```

4. Verify Configuration

```
ip a show eth0
```

Reference: [CentOS Wiki - CentOS 7 Network Settings](https://wiki.centos.org/FAQ/CentOS7)
