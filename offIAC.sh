#!/bin/bash

#####Removendo toda a estrutura criada com o script onIAC - Máquina como código
echo "###Removendo Grupos###"
delgroup -f GRP_ADM 2> /dev/null
delgroup -f GRP_VEN 2> /dev/null
delgroup -f GRP_SEC 2> /dev/null
sleep 1

echo "###Excluindo usuários###"
userdel -r  carlos     2> /dev/null
userdel -r  maria      2> /dev/null
userdel -r  joao       2> /dev/null
userdel -r  debora     2> /dev/null
userdel -r  sebastiana 2> /dev/null
userdel -r  roberto    2> /dev/null
userdel -r  josefina   2> /dev/null
userdel -r  amanda     2> /dev/null
userdel -r  rogerio    2> /dev/null
sleep 1
echo "###Excluindo pastas.."""
##/ADM
if [ -e /GRP_ADM ]; then
    rm -Rf /GRP_ADM
fi
##/VEN
if [  -e /GRP_VEN ]; then
    #Criando Pasta
    rm -Rf /GRP_VEN
fi
##/SEC
if [  -e /GRP_SEC ]; then
    rm -Rf /GRP_SEC
fi
##/Publico
if [  -e /Publico ]; then
    rm -Rf /Publico
fi
sleep 1
echo "Finalizado!"