#!/bin/bash

directory_name=$1

cd $directory_name

dir_counter=0
fil_counter=0

for obj in * 
do
	if [ -x $obj -a -f $obj  ]
	then
		let "fil_counter=fil_counter+1"
	elif [ -x $obj -a -d $obj ]
	then
		let "dir_counter=dir_counter+1"
	fi 
done

cd ..

echo directories with x: $dir_counter
echo files with x: $fil_counter
