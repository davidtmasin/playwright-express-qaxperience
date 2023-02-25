#! usr/bin/bash

# Instruções:
# O script deve ser salvo na pasta raiz do projeto para que os diretórios sejam encontrados;
# Caso tenha problema de permissão para executar, execute "chmod +x ./up.sh" para dar permissão de execução no arquivo;
# Você pode executar usando "bash up.sh";

echo -n "Qual ambiente você quer subir? API ou WEB? Digite: "
read env

if [ -z "$env" ]; then
  echo "Opção inválida, você precisa digitar alguma opção! O seu ambiente não foi alterado."
  exit 0
elif [ $env == "API" ]; then
  echo "---> Subindo a API <---"
  cd ./apps/api && yarn dev
elif [ $env == "WEB" ]; then
  echo "---> Subindo a Web Application <---"
  cd ./apps/web && yarn dev
else
  echo "Opção inválida, digite na próxima vez 'API' ou 'WEB'. O seu ambiente não foi alterado."
  exit 0
fi