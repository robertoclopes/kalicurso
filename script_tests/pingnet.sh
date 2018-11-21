#!/bin/bash
if [ "$1" == "" ]
then
	echo "DESEC SECURITY -- PENTEST PROFISSIONAL"
	echo "EXEMPLO DE USO: $0 172.20.152"
else
	for host in {70..80}
	do
		ping -c1 $1.$host  | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
	done
fi