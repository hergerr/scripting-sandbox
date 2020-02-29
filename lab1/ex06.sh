#!/bin/bash

directory1_name=$1
directory2_name=$2

for file in $directory1_name/*
do
	if [ -x $file -a -f $file  ]
	then
		mv $file $directory2_name
	fi

done
