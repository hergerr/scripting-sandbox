#!/bin/bash
# Tymoteusz Frankiewicz, 241255

# Napis pozostawiony markerem w toalecie głosił: „dokument tajemnic 
# został otwarty – strzeżcie się wrogowie dziedzica”. Uratuj świat, 
# używając awka jako swojego zaklęcia Patronusa i zabawiając
#  się z http://tinyurl.com/doc-tajemnic. Niech skrypt:
# a) wyciągnie zawartość dokumentu z podanego adresu sieciowego, używając na przykład komendy
# wget -qO- <adres>

# b) poda, ilu jest unikalnych prowadzących w tym dokumencie, 
# przyjmując naiwnie, iż wpisy ‘Doktor Jarosław Rudy’ i ‘Jarosław Rudy’ to różni prowadzący

# c) oszacuje objętość zadań (liczoną na przykład jako liczbę znaków), 
# zgłoszonych dla każdego prowadzącego i wyświetli to zestawienie według popularności wpisów

# d) wyszukując odpowiednie wzorce (wiedząc na przykład, że zadania Pana Szymona Datki
#  stosują zawsze numerację dwucyfrową) wyznaczy dokładną liczbę zadań dla każdego prowadzącego


# a, b
# "Szymon Datko" różni się znakiem kończącym linie - patrz pipe wynikow do hexdump'a"
wget -qO- http://tinyurl.com/doc-tajemnic | awk '\
$1 == "Prowadzący:"{ names[$2" "$3]++}
END {for (name in names) printf("%s - %s\n", names[name], name)}'

# c
# zlicza znaki miedzy slowem 'prowadzący'
wget -qO- http://tinyurl.com/doc-tajemnic | awk '\
{if ($1 == "Prowadzący:") last_occured_name = $2" "$3}
names[last_occured_name] += length
END {for (name in names) printf("%s - %s\n", names[name], name)}' \
| sort -nk1 \
| tail -8

# d
wget -qO- http://tinyurl.com/doc-tajemnic | awk '\
$1 ~ /^[0-9]+./ {names["Szymon Datko"]++ }
$1 ~ /^Zadanie/ {names["Kamil Szyc"]++ }
$1 ~ /^zad[0-9]+/ {names["Kamil Szyc"]++ }
$1 ~ /^zad./ {names["Mariusz Uchroński"]++}

END {for (name in names) printf("%s - %s\n", names[name], name)}'