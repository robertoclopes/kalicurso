#!/bin/bash
if [ $# -le 0 ]
then
	echo "Analisador de URL"
	echo "$0 sitealvo.com.br"
else
	endereco = "$1"
	if [ "$1" != "" ]; then
		wget endereco
		sleep 10
		#criando lista com enderecos
		echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
		echo ">>>>>>>>>>>>>>> gerando lista com enderecos >>>>>>>>>>>>>>>"
		echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
		grep href index.html | cut -d "/" -f3 | grep "\." | cut -d '"' -f1 | sort -u | grep -v "<li" > lista
		cat lista
		for url in $(cat lista); do
			host $url | grep "has address"
		done
	fi
fi