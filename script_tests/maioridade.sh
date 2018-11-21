#!/bin/bash

#echo "?> idade ?"
#read idade

if [ !$1 ]
then
	echo $0
fi

idade=$1

if [ "$idade" -ge 18 ]	#checa se a idade é >= a 18
then
echo "yes you can drive"
else
echo "no you can not drive"
fi
