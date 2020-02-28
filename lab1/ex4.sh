#!/bin/bash
 
directory_name=$1
counter=1
 
for file in $directory_name/*
do
   mv $file $file.$counter
   let "counter=counter+1"
done
