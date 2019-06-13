#!/bin/bash
#Author		:Masato
#Created Time :Thu 13 Jun 2019 10:54:05 AM CST
#FileName		:login.sh
#Description	:
if [ x$1 == x"" ];
then
	cat run_machine.txt | grep -v "^\#" | awk -F"|" '{print $1":"$2}' | column
else
	
	eval $(cat run_machine.txt | grep -v "^\#" | awk -F"|" '{ if($1 == '${1}'){print $3}}' | awk -F":" '{print "IP="$1";PORT="$2";USER="$3";PASSWD="$4}' )
	./ssh.exp $IP $PORT $USER $PASSWD
fi
