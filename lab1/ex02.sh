#!/bin/bash

directory_name=$1
list_file_name=$2

files_names=`cat $list_file_name`

for file in $files_names
do
	if [ ! -e $file ]
	then
		touch $directory_name/$file
	fi
done
