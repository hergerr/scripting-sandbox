#!/bin/bash

directory_name=$1
file_name=$2

ls $directory_name > list2

echo Obecne w D, nieobecne na liscie: `comm -13 $file_name list2`
echo Obecne na liście, nieobecne w D: `comm -23 $file_name list2`

rm list2
