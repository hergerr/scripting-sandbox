#!/bin/bash
# Tymoteusz Frankiewicz, 241255

# Napisz skrypt, który przeszuka zadane miejsce w systemie plików 
# (parametr wywołania skryptu), o ile ono istnieje, i wyświetli
# wszystkie istniejące w tym miejscu (i jego ewentualnych podkatalogach)
# dowiązania twarde i miękkie do wskazanego pliku (parametr wywołania skryptu).

dir=$1
filepath=$2

if [ ! -d $dir ]; then
    echo "This directory does not exist"
    exit 1
fi

find -L $dir -samefile $filepath
