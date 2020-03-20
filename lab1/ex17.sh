#!/bin/bash

# Usuwanie z zadanego katalogu (pierwszy argument skryptu) wszystkich plików,
# których nazwy pokrywają się z nazwami w drugim katalogu (drugi argument).
# Nie usuwaj podkatalogów. Nie usuwaj równie plików o nazwach pokrywających się z nazwami podkatalogów w drugim katalou.
# a) skontroluj, czy podano poprawną liczbę argumentów do skryptu
# b) upewnij się, że oba katalogi robocze istniej oraz możesz usuwać pliki z pierwszego katalogu
# c) nie usuwaj żadnych plików wykonywalnych
# d) przeprowadź usuwanie także w podkatalogach, istniejących w obydwu katalogach roboczych

first_dir=$1
second_dir=$2

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    exit
fi

if [ -e $first_dir -a -d $first_dir -a -w $first_dir -a -e $second_dir -a -d $second_dir ]; then
    for file in $second_dir/*
    do
        if [ -d $file ]; then
        subdir_name=${file##*/}
            for sub_file in $file/*
            do
                file_name=${sub_file##*/}
                if [ -e $first_dir/$subdir_name/$file_name -a ! -x $first_dir/$subdir_name/$name -a -f $first_dir/$subdir_name/$name ]; then
                    rm $first_dir/$subdir_name/$file_name
                    echo $first_dir/$subdir_name/$file_name
                fi
            done
        fi

        name=${file##*/} # usuwa ze ścieżki wszystko to co jest przed nazwa pliku
        if [ -e $first_dir/$name -a ! -x $first_dir/$name -a -f $first_dir/$name ]; then
            echo $first_dir/$name
            rm $first_dir/$name
        fi
    done
else
    echo "One of directories does not exist or does not have correct pemissions"
fi
