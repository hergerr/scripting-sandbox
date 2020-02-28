#!/bin/bash

directory_name=$1
name=$2

cd $directory_name

for file in *
do
	if [ ! -s $file  ]
	then	
		rm $file
		echo $file >> $name 
	fi
done

cd ..
