#!/bin/bash

# Napisz skrypt, który dla wszystkich plików wykonywalnych 
# z jakiegoś katalogu (parametr wywołania skryptu) zrobi
# dowiązania twarde w drugim katalogu (parametr wywołania skryptu),
#  zaś dla podkatalogów utworzy on dowiązania miękkie. 
# Dodatkowo: 
# a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików, 
# b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już dowiązanie twarde 
# (wcześniej zakładaliśmy, że na pewno nie istnieje) 
# c) zadbaj o to, żeby dowiązania symboliczne były stworzone względem katalogu roboczego (pwd) 
# d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie
# dowiązania do plików z tych podkatalogów w drugim danym katalogu (załóż, że nazwy plików są unikalne)

if [ $# -ne 2 ]
then
	echo "Script should be run with 2 args"
	exit 1
elif [ ! -d $1 -o ! -d $2 ]
then
	echo "Arguments should be directories"
	exit 1
fi

dir1=$1
dir2=$2

for file in $dir1/*
do
    if [ -f $file -a -x $file ]; then
        hardlink_exists=false
        for f in $dir2/*
        do
            if [ $f -ef $file ]; then
                hardlink_exists=true
                break
            fi
        done

        if [ $hardlink_exists = false ]; then
            ln $file $dir2
        fi

    elif [ -d $file ]; then
        ln -s "`pwd`/$file" $dir2
    fi
done

