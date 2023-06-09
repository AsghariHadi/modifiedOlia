#!/bin/bash
make
sudo rmmod -f mptcp_olia.ko
sudo insmod mptcp_olia.ko

cc=$(< /proc/sys/net/ipv4/tcp_allowed_congestion_control)
cc="$mptcp_olia"
sudo sysctl net.ipv4.tcp_allowed_congestion_control=$cc

#end
