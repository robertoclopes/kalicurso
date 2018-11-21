#!/bin/bash
    
if [ $# -lt 1 ];	# $# contém o número de argumentos que foi passado (ou seja, não considera o nome do script em $0);
then
	echo "Precisa fornecer pelo menos 1 argumento!"
	exit 1
fi

echo "Número de argumentos passados: $#"
#echo $*
i=0

for argumento in $*
 do
	 i=$(($i+1))	#`expr $i + 1`
	 echo "Argumento $i passado: $argumento"
done
