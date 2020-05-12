#!/bin/bash
# Tymoteusz Frankiewicz, 241255
# Zabawy z komendą ps --no-header -ewwo user,pcpu,command. Niech skrypt:
# a) wyświetli 10 procesów, które najbardziej obciążają procesor
# b) policzy, ile procesów należy do poszczególnych użytkowników systemu
# c) zamieni wielokrotne wystąpienia spacji na pojedyncze ich wystąpienia
# d) zliczy, ile unikalnych programów jest uruchomionych w systemie 
# (zakładamy najprościej, że program1, /jakiś/program1 oraz /jakiś/program1 --jakaś-opcja 
# to dwa unikalne działające programy: program1 oraz /jakiś/program1)

# a
echo "Zadanie A:"
ps --no-header -ewwo user,pcpu,command | sort -rk2 | head

echo


echo "Zadanie B:"
# b
user=""

# pierwszy user ma na pewno 1 proces
num_of_user_proc=1

# wyciecie interesujacej kolumny
ps --no-header -ewwo user,pcpu,command | sort | awk '{ print $1 }' | ( while read output
do
    # jesli jest to ten sam user, inkrementuj liczbe procesow
    if [ "$user" = "$output" ]; then
        num_of_user_proc=$((num_of_user_proc+1))

    # jesli nie, to jesli to jest 'pusty' uzytkownik, ustaw nazwe
    # pierwszego uzytka na poprawna i pomin ten obieg petli
    # jesli to nie jest 'pusty', wiprintuj dotychczasowego, zmien 
    # usera, zainicjalizuj liczbe procesow
	elif [ "$user" != "$output" ]; then

        if [ "$user" = "" ]; then
		    user="$output"
            continue;
        fi

		echo "${user} : ${num_of_user_proc}"
		user="$output"
		num_of_user_proc=1
    fi
done
echo "${user} : ${num_of_user_proc}" )