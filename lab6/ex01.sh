#!/bin/bash
# Tymoteusz Frankiewicz, 241255

# Pobierz plik http://datko.pl/SO2/lipsum.txt - najlepiej użyj programu wget
# z poziomu konsoli (składnia: wget <adres-pliku>). Następnie napisz skrypt,
# który z całej zawartości tego pliku zwróci (wypisze na ekran) wszystkie 
# słowa mogące być imionami (zaczynające się dużą literą – tylko i wyłącznie
# takie słowa, nic ponadto; każde znalezione wypisać w nowej linii). 
# [poproszę o jedno, zmyślne wykonanie komendy awk z wyrażeniami regularnymi]

wget -qO- http://datko.pl/SO2/lipsum.txt | awk '\
{ for(i = 1; i <= NF; i++) { if($i ~ /^[[:upper:]][[:lower:]]+/)  {print $i} }}'