#!/bin/bash
# Tymoteusz Frankiewicz, 241255

# Proszę opracować skrypt, który przy pomocy wyrażeń regularnych wykona odpowiednie
# akcje na podanych plikach (można je uprzednio pobrać na dysk lub ładować 
# bezpośrednio z sieci wewnątrz skryptu - dowolnie). Proszę:

# a) wczytać plik http://datko.pl/SO2/nowomow.txt i wyświetlić jego treść, modyfikując
# w locie format dat z Europejskiego na Amerykański (czyli dd/mm/yyyy → mm/dd/yyyy),

# b) wczytać plik http://datko.pl/SO2/sensors.txt i wyświetlić jego treść, konwertując
# w locie wartości temperatur ze stopni Celsjusza na stopnie Farenheita,

# c) wczytać plik http://datko.pl/SO2/tox.ini i wyświetlić jego treść, dopisując w locie
# dodatkową instrukcję na końcu klucza commands w grupie testenv:docs,

# d) wyposażyć skrypt w rozsądną obsługę błędów, takich jak na przykład nieistniejące pliki wejściowe.

# a
wget -qO- https://datko.pl/SO2/nowomow.txt | awk '\
# separator daty w pliku to . lub /
{newdates = gensub(/([0-9]{2})(\.|\/)([0-9]{2})(\.|\/)([0-9]{4})/, "\\3/\\1/\\5", "g")
print newdates}'

# b
wget -q0- http://datko.pl/SO2/sensors.txt  | awk '\
newtemps = gensub(/\+[[:digit:]]+/, lolo, "g")
print newtemps'