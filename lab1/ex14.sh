#!/bin/bash

directory_name=$1

cd $directory_name
	
for obj in *
do
	if [ -f $obj  ]
	then
	chmod +w $obj
	elif [ -d $obj ]
	then
	chmod -x $obj
	fi
done

cd ..
