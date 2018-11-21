#!/bin/bash
#ip=192.168.0.1

#echo "entre com o endereco IP:"
#read ip

#echo "varrendo o host $ip"

#--
#--

echo "interface ?>"
read interface

ifconfig $interface
