#!/bin/bash

directory1=$1
directory2=$2

# appends / to directories, than displays what DOES NOT HAVE /
ls $directory1 -p | grep -v / > d1_content
ls $directory2 -p | grep -v / > d2_content

for file in `comm -12 d1_content d2_content` 
do
	rm $directory1/$file
done

rm d1_content d2_content
