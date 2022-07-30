
#!/bin/bash
#Script psra instalação de um servidor apache e provisionar um site

echo "####Iniciando atualização do sistema..."
sleep 1
apt-get update && apt-get upgrade -y
clear
echo "####Instalando os pacotes básicos e httpd"
sleep 1
apt-get install -y zip ssh apache2 unzip vim net-tools tcpdump nmap
cd /tmp
rm /tmp/main.zip
rm -Rfv /tmp/linux-site-dio-main
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip  main.zip
cp -R linux-site-dio-main/* /var/www/html/

systemctl enable apache2 --now

