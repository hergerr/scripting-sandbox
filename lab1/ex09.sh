#!/bin/bash

directory_name=$1

cd $directory_name

for dir in *
do
	cd $dir
	cp *  ..
	cd ..
	rm -rf $dir
done

cd ..
