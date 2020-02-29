#!/bin/bash

directory_name=$1

for obj in $directory_name/*
do
	echo $obj
	if [ -d $obj ]
	then
		for subobj in $obj/*
		do
			echo $subobj
		done
	fi

done
