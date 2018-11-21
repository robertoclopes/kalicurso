#!/bin/bash
if [ "$1" == "" ]
then
	echo "curso de pentest profissional"
	echo "$0"
awk -F : '{print $1, $6}'	ifconfig | grep "148."
fi
