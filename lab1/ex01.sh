#!/bin/bash

directory_name=$1

for file in $directory_name/*
do
	if [ -w $file ]
	then
		mv $file $file.old	
	fi
done
