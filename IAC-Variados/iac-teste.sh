#!/bin/bash

#Script para a instalação de programas padrões: VIM NET-TOOLS TCPDUMP NMAP

echo "####Iniciando atualização do sistema..."
sleep 1
apt-get update && apt-get upgrade -y
clear
echo "####Instalando os pacotes básicos e httpd"
sleep 1
apt-get install -y zip ssh apache2 unzip vim net-tools tcpdump nmap

#Habilitando SSH na inicialização
dpkg -l ssh
RETORNO=$?
echo "retorno $RETORNO"
if [ $RETORNO == 0 ]; then
   echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
   systemctl enable --now ssh
fi
#baixando arquivo
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /temp
