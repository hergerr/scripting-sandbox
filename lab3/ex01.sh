#!/bin/bash

# Dane są drzewa katalogowe D1 oraz D2 (argument skryptu).
#
# Należy w D1 oraz D2:
#
# 1. Usunąć wszystkie pliki .png (nie muszą być to prawdziwe png, 
# liczy się rozszerzenie) o rozmiarze mniejszym niż 200 bajtów (2 p).
#
# 2. Znaleźć katalogi, do których: właściciel pliku ma prawo odczytu 
# lub inni nie mają prawa wykonania (4 p).
#
# 3. Znaleźć linki symboliczne do plików innych niż zwykłe (2 p).
#
# 4. Wypisać dla plików zwykłych: numer i-noda, rozmiar pliku oraz 
# datę ostatniej modyfikacji (3 p).

# Wszystkie 4 podpunkty powinny być w jednym findzie. 
# Skrypt będzie wtedy zawierał (oprócz standardowego sprawdzania 
# argumentów) tylko dwie rozbudowane komendy find (jedna dla szukania 
# w D1 oraz jedna dla szukania w D2).
#
# Dodatkowe punkty za:
# a) ograniczenie wyszukiwania do 3 poziomów podkatalogów (1 p).
# b) zrobienie wszystko jednym findem (1 p).

dir1=$1
dir2=$2

find $dir1 $dir2 -maxdepth 3 \( -name "*.png" -type 'f' -size -1000k -delete \) , \
\( -type d -and \( -perm -400 -or ! -perm -001 \) -printf '2. ' -print \) , \
\( -type l -exec test ! -f {} \; -printf '3. ' -print \) , \
\( -type f -printf "4. %f --- %i - %s - %t \n" \)