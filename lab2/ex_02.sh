#!/bin/bash

# Dany jest katalog D (argument skryptu). Należy w nim zmienić wszystkie 
# dowiązania symboliczne tak by były zdefiniowane ścieżką względną 
# (i wskazywały na to same miejsce co przed zamianą). 
# Stworzenie ścieżki względnej inaczej niż „ręcznie” jest nisko punktowane.

dir=$1

for file in $dir/*
do
    link_path=`readlink $file`
    relative_path=`realpath --relative-to="$dir" "$link_path"`
    ln -sf $relative_path $file
done