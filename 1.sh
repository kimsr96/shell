#!/bin/bash

DIRS="dir1 dir2 dir3 dir4"
DIRS2="subdir1 subdir2 subdir3 subdur4"
for dirtmp in $DIRS
do
	mkdir $dirtmp
	echo $dirtmp "Created"
	for dirtmp2 in $DIRS2
	do
		mkdir $dirtmp/$dirtmp2
		echo $dirtmp2 "Creared"
	done
done

