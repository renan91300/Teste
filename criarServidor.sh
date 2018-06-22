#!/bin/bash
x='s'

menu(){
while true $x != "s"
do
clear	
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
echo "Digite a opção desejada: ";
read x
echo "Opção informada ($x)"
	

case "$x" in
	1)
		sudo apt-get install vsftpd;
		sleep 2
		clear;
	;;
	
	2)
		sudo sed -i 's/anonymous_enable=NO/anonymous_enable=YES/g' /etc/vsftpd.conf
		service vsftpd restart;
		sleep 2
		clear;		
	;;

	3)
		sudo sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf
		service vsftpd restart;
		sleep 2
		clear;
	;;
	4)
		sudo sed -i 's/write_enable=NO/write_enable=YES/g' /etc/vsftpd.conf
		service vsftpd restart;
		sleep 2
		clear;
	;;
	5)
		sudo sed -i 's/write_enable=YES/write_enable=NO/g' /etc/vsftpd.conf
		service vsftpd restart;
		sleep 2
		clear;
	;;
	6)
		sudo apt-get remove vsftpd
		sleep 2
		clear;
	;;

	7)echo "================================================"
		echo "Saindo..."
        	sleep 2
        	clear;
	        exit;

	echo "================================================"

	;;

	*)
	
		echo "Opção inválida!"
	;;

		
}
