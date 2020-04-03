#!/bin/bash

# Dany jest katalog D oraz plik zwykły P (dwa argumenty skryptu).
# Należy w D usunąć wszystkie dowiązania symboliczne wiszące (zepsute)
# a następnie zamienić wszystkie dowiązania symboliczne w D do pliku P
# na dowiązania twarde.

dir=$1
linked_file=$2

for file in $dir/*
do

    if [ -L $file ] ; then

        link=`readlink $file`
        if [ `basename $link` = $linked_file ] ; then
            ln -f $link $file
        fi

        if [ ! -e $file ] ; then
            rm $file
        fi

    fi

done


