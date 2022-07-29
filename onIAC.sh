#!/bin/bash

#Script criado para exercitar o conceito de criação de máquina como código. Deve criar três grupos, adicionar os usuários e também criar as pastas dos grupos e a publica.

#####Criando Grupos Necessários
groupadd GRP_ADM 2> /dev/null #Redirecionando erros se existirem os grupos (não mostrar na tela 2>)
groupadd GRP_VEN 2> /dev/null
groupadd GRP_SEC 2> /dev/null


##### Criando usuários

##Usuários Grupo ADM: carlos maria joao
useradd -m carlos -g GRP_ADM 2> /dev/null
useradd -m maria -g GRP_ADM 2> /dev/null
useradd -m joao -g GRP_ADM 2> /dev/null

##usuarios Grupo Vendas: deobra sebastiana roberto
useradd -m debora -g GRP_VEN 2> /dev/null
useradd -m sebastiana -g GRP_VEN 2> /dev/null
useradd -m roberto -g GRP_VEN 2> /dev/null
##usuarios Grupo GRP_SEC: josefina amanda rogerio
useradd -m josefina -g GRP_SEC 2> /dev/null
useradd -m amanda -g GRP_SEC 2> /dev/null
useradd -m rogerio -g GRP_SEC 2> /dev/null

#####Criação das pastas e permissões

##/ADM
if [ ! -e /GRP_ADM ]; then
    #Criando Pasta
    mkdir /GRP_ADM
    chown root.GRP_ADM /GRP_ADM
    chmod 770 /GRP_ADM
else
    chown root.GRP_ADM /GRP_ADM
    chmod 770 /GRP_ADM
fi


##/VEN
if [ ! -e /GRP_VEN ]; then
    #Criando Pasta
    mkdir /GRP_VEN
    chown root.GRP_VEN /GRP_VEN
    chmod 770 /GRP_VEN
else
    chown root.GRP_VEN /GRP_VEN
    chmod 770 /GRP_VEN
fi


##/SEC
if [ ! -e /GRP_SEC ]; then
    #Criando Pasta
    mkdir /GRP_SEC
    chown root.GRP_SEC /GRP_SEC
    chmod 770 /GRP_SEC
else
    chown root.GRP_SEC /GRP_SEC
    chmod 770 /GRP_SEC
fi


##/Publico
if [ ! -e /Publico ]; then
    #Criando Pasta
    mkdir /Publico
    chown root.root /Publico
    chmod 777 /Publico
else
    chown root.root /Publico
    chmod 777 /Publico
fi

#Mensagem ao usuario
echo "####################Pastas criadas:"
ls / | grep "GRP_*" 
ls / | grep "Publico"

echo "####################Usuários Criados"
id carlos
id maria
id joao
id debora
id sebastiana
id roberto
id josefina
id amanda
id rogerio