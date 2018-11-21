#!/bin/bash
echo "?> IP"
read ip
ping -c 1 $ip
