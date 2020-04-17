#!/bin/bash

# Napisz skrypt, który dla podanego miejsca w systemie plików 
# (parametr wykonania skryptu) oraz wszystkich jego podkatalogów,
# wypisze ścieżkę, nazwę użytkownika, grupy i uprawnienia
# do plików zwykłych, których formalnym właścicielem nie jest aktualny użytkownik (whoami). 
# ex: /tmp

dir=$1

user=`whoami`
find $dir \! -user $user -printf "Path: %p --- User: %u --- Group: %g --- Permissions: %M\n"
echo $user