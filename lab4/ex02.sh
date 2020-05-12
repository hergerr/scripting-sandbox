#!/bin/bash
# Tymoteusz Frankiewicz, 241255
# Napisz skrypt, który z zadanego miejsca systemu plików (parametr wywołania skryptu),
# uwzględniając wszystkie możliwe podkatalogi, wypisze ścieżki do N (opcjonalny 
# parametr wywołania skryptu; domyślnie 10) największych (pod względem rozmiaru w bajtach) 
# plików. Jeśli kilka plików ma taki sam rozmiar, wybieramy dowolny z nich (bez znaczenia który).

dir=$1

# 10 jest domyslne
number=${2:-10}

find $dir -type f -printf '%s bytes. Path: %p\n' | sort -nr | head -$number
