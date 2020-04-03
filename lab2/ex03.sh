#!/bin/bash

# wyświetlić nazwy symlinków i miejsca na które wskazują

dir=$1

for file in $dir/*
do
    if [ -L $file ]; then
        echo "`basename $file` wskazuje na `readlink $file`"
    fi
done