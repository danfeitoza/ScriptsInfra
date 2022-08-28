#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos para aplicação"

cd /tmp
wget site-exemplo
unzip site-exemplo
cd site-exemplo
cp -R * /var/www/html/

chmod +x script-iac2.sh