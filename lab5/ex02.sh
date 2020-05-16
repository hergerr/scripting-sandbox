#!/bin/bash
# W zadanym drzewie katalogów wylistować nazwy wszystkich plików regularnych, 
# mających duże litery w środku nazwy (ale nie w ścieżce ani w ewentualnym ostatnim 
# rozszerzeniu) na postać _ i mała litera (np. noweDrogi.doc na nowe_drogi.doc). 
# Listować razem ze ścieżką (tak jak -print find’a).

find $1 -type f -print | awk '\
BEGIN { FS = "/" };
{ nocammelcase = gensub(/([[:lower:]]+)([[:upper:]])([[:lower:]]+)/, "\\1_\\2\\3", "g", $NF) 
lowercase = tolower(nocammelcase)
print lowercase}';