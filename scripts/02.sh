#!/bin/bash

while [ -z $user ]
do
	read -p "entrez l'id du user a suprimer : " user
done

var=`who -u | grep $user | cut -d " " -f1`
if [ "$var" = "$user" ]
then
	echo "on supprime $var"
	sudo killall -KILL -u $var 2>> rapport.txt
	sudo userdel -f -r $var 2>> rapport.txt
else
	echo "l'utilisateur n'est pas encore sortie du ventre de sa rom ...."
	sh 02.sh
fi