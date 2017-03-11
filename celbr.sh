#!/bin/bash
clear
	echo "Digite o código de área:"
read AR
	echo "Digite os três primeiros digitos:"
read NUM
PI=`grep $AR conf/ddd.txt|cut -d : -f2`
RG=`grep $AR conf/area.txt|cut -d : -f2`
OP=`grep $NUM estados/$PI.txt|cut -d : -f2`
clear
	if [ "$OP" != "" ]; then
		echo "Numero da operadora $OP na região de $RG"
	else
		echo -e  "\aErro! Dados inválidos!"
	fi
