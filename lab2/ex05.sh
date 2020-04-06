#!/bin/bash
# Tymoteusz Frankiewicz, 241255

# zadanie 25. 
# Napisz skrypt, który wyświetli nazwy wszystkich dowiązań symbolicznych
# z danego katalogu (parametr wywołania skryptu), które wskazują
# na określone miejsce w systemie plików (parametr wywołania skryptu). 

dir=$1
path=$2

for file in $dir/*
do
    if [ -L $file ]; then
        link_target=`readlink $file`
        if [ $link_target = $path ]; then
            echo $file
        fi

    fi
done