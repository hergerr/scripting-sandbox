#!/bin/bash

directory_name=$1

for each in $directory_name/*
do
	if [ ! -x $each ]
	then
		rm -rf $each
	fi

done
