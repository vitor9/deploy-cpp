#!/bin/bash

pacote=''

echo "Qual o pacote que deseja buildar?"
read pacote

echo "Limpando os arquivos de build temporarios"
make clean -C "aqui/vai/o/seu/pacote/$pacote"

echo "Criando o pacote do projeto"
make -C "caminho/aonde/vai/buildar/fonte/$pacote"
echo "Pacote criado!"

echo "Copiando pacote recem criado para a pasta aonde a aplicacao compila os pacotes"
cp "/caminho/pacote/gerado/$pacote" "/caminho/aonde/aplicacao/compila/pacotes"

echo "Segue o pacote atualizado"
"/caminho/aonde/aplicacao/compila/pacotes/$pacote"

echo "Inicializando a aplicacao"
bash "caminho/aonde/roda/aplicacao"
