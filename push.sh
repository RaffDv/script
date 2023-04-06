#!/bin/bash

# Define o caminho padrão do repositório

repository_path=$(pwd)
echo "$repository_path"

# Define o nome do usuário no Github e o nome do repositório


# Move para o diretório do repositório
cd $repository_path

# Pergunta ao usuário a mensagem do commit
read -p "Digite a mensagem do commit: " message

# Adiciona todos os arquivos alterados ao staging area
git add -A

# Faz o commit com a mensagem fornecida pelo usuário
git commit -m "$message"

# Envia as alterações para o repositório no Github
git push origin main

echo "Alterações enviadas para o repositório no Github"

