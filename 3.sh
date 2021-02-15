#!/bin/bash
read -p "Enter Your Username?[user] : " user
bashname=`awk '/'$user'/' /etc/passwd | awk -F: '{print $1}'`
echo "User bashname : "$bashname
read -p 'Is correct?[y/n]' answer
if [ $answer == "n"]
then
	exit
else
	for i in {100..102}
	do
		name=$user$i
		useradd $name; (echo abcdef; echo abcdef | passwd $name)
		echo "$name and password created.."
	done
fi

