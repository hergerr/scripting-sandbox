#!/bin/bash

directory_name=$1
file_name=$2
path_to_file=$3

for line in `cat $file_name`
do
	echo $line >> $path_to_file
	cat $directory_name/$line >> $path_to_file
done
