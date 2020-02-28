#!/bin/bash

directory_name=$1

cd $directory_name

for file in *
do
	if [ -w $file ]
	then
		echo $file:
		cat $file
	fi
done

cd ..
