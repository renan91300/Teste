#!/bin/bash

menu(){
echo "//--- Gerenciador FTP ---//";
echo "1)Instalar servidor FTP"
echo "2)Habilitar acesso anônimo"
echo "3)Desabilitar acesso anônimo"
echo "4)Habilitar envio/escrita de arquivos"
echo "5)Desabilitar envio/escrita de arquivos"
echo "6)Desintalar o servidor FTP"
echo "7)Sair"
echo "//-----------------------//"
echo ""
echo "Digite a opção desejada: "
}

read opcao
case "$opcao" in
	1)sudo apt-get install vsftpd;;
	2)sudo sed -i 's/anonymous_enable=NO/anonymous_enable=YES/g' /etc/vsftpd.conf;;
	3)sudo sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf;;
	4)sudo sed -i 's/write_enable=YES/anonymous_enable=YES/g' /etc/vsftpd.conf



