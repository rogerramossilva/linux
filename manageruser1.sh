#!/bin/bash

. /var/scripts/funcoes.sh
#source /var/scripts/funcoes.sh

menu

case $OPCAO in  
  1)  
    nome
    validauser
    case $RC in
      0)  
        echo "O usuário $NOME já existe"
        ;;
      *)  
        criaruser
        ;;
    esac
    ;; 
 2)  
    nome
    validauser
    case $RC in
      0)  
        deleteuser
        ;;
      *)
        echo "O usuário $NOME não existe"
        ;;
    esac
    ;;
  3)
    nome
    validauser
    case $RC in
      0)
        alterasenha
        ;;
      *)
        echo "O usuário $NOME não existe"
        ;;
    esac
    ;;
  0)
    exit
    ;;
  *)
    echo "Opção invalida, tente novamente"
    ;;
esac
