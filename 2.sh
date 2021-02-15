#!/bin/bash

echo "A : "
read A
echo "B : "
read B

echo "Operator : "
echo "1)+"
echo "2)-"
echo "3)*"
echo "4)/"
read oper

case $oper in 
	1) echo $A"+"$B; echo "$A+$B" | bc;;

esac
