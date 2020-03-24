#!/bin/bash
# Tymoteusz Frankiewicz, 241255
# zadanie 01. Dany jest katalog D (pierwszy parametr skryptu). Należy zmienić nazwy wszystkich plików w D do których my (nasz skrypt) ma prawo zapisu, przez dopisanie dodatkowego członu ".old". 

directory_name=$1

for file in $directory_name/*
do
	if [ -w $file ]
	then
		mv $file $file.old	
	fi
done
