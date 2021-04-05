#!/bin/bash
resposta='N'

#echo "Resposta: $resposta"

while [ $resposta = 'N' ] || [ $resposta = 'n' ]
do

	echo "Qual o seu nome?"
	read nome

	echo "Aaah, vc se chama $nome?"
	read resposta

	echo "Sua resposta foi: $resposta?"

done
touch $nome.txt
