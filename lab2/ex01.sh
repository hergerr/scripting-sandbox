#!/bin/bash

# Dany jest katalog D oraz plik zwykły P (dwa argumenty skryptu).
# Należy w D usunąć wszystkie dowiązania symboliczne wiszące (zepsute)
# a następnie zamienić wszystkie dowiązania symboliczne w D do pliku P
# na dowiązania twarde.

dir=$1
linked_file=$2

for file in $dir/*; do
    if [ -L $file -a ! -e $file ]; then
        rm $file
    fi
done

for file in $dir/*; do
    link=$(readlink $file)
    if [ -L $file -a $(basename $link) = $linked_file ]; then
        ln -f $link $file
    fi
done
