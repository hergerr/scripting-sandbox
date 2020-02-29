#!/bin/bash

directory_name=$1
file_name=$2
path_to_file=$3

for line in $path_to_file
do
	cat $line >> $file_name
	cat $directory_name/`cat $line` >> $file_name
done
