#!/bin/bash
# Tymoteusz Frankiewicz, 241255
# Napisz skrypt, który będzie się zachowywał jak 
# własna wariacja na temat programu du. Mianowicie,
# dla zadanego miejsca w systemie plików (argument wywołania skryptu),
# czyli dla samego pojedynczego pliku lub całego katalogu
# (wraz z całą zawartością), powinien on obliczyć 
# jego całkowity rozmiar w bajtach na dysku. 
# [poproszę o jedno, zmyślne wykonanie komendy awk]

# wynik powinien się zgadzać z du -sb
find $1 -printf "%s\n" | awk '{sum += $1} END {print sum}'