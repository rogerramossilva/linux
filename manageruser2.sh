#!/bin/bash

. /var/scripts/funcoes.sh

menu

if [ $OPCAO -eq 1 ]; then
  nome
  validauser
  if [ $RC -eq 0 ]; then
    echo "usuario $NOME já existe"
  else
    criaruser
  fi  
elif [ $OPCAO -eq 2 ]; then
  nome
  validauser
  if [ $RC -eq 0 ]; then
    deleteuser
  else
    echo "O Usuário $NOME não existe"
  fi  
elif [ $OPCAO -eq 3 ]; then
nome
  validauser
  if [ $RC -eq 0 ]; then
    alterasenha
  else
    echo "O Usuário $NOME Não existe"
  fi
else
  echo "Opção invalida, Digite novamente"
fi
