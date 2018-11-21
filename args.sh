#!/bin/bash
if [ "$1" == "" ]
then
	echo "curso de pentest profissional"
	echo "$0"

	#var=`ifconfig | grep "inet" | awk -F " " '{print $2}' | sed -n '1p'`
	var=`ifconfig | grep "inet" | awk -F " " '{print $2}'`

	#i=0
	for args in $var
	do
		#i=$(($i+1))
		echo "Argumento: $args"
		break;
	done
	#echo $var
fi
