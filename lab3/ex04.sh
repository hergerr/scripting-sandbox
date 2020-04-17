#!/bin/bash
# Tymoteusz Frankiewicz, 241255
# Napisz skrypt, który dla wskazanego miejsca w systemie plików (parametr wywołania skryptu):
# a) wyszuka i zliczy (wc) ile jest plików wykonywalnych (dla podmiotu uruchamiającego skrypt)
# b) wyświetli ścieżki do skryptów (wykonywalnych plików tekstowych – file -i)
# c) sprawdzi, czy podany w nagłówku skryptu (head) interpreter (zapis #!/ścieżka) istnieje w lokalnym systemie
# d) wyświetli ostrzeżenie w przypadku plików wykonywalnych, które były zmodyfikowane w ciągu ostatniego tygodnia

dir=$1

echo -n "Ex a: "
find $dir -executable -type f | wc -l
echo "--------"

echo "Ex b: "
find $dir -executable -type f -exec file -i {} \; | grep -i "asci" | awk '{ print $1 }'
echo "--------"

# this awk cuts colon (last). first column, starting at first sign, till the end -1
echo "Ex c: "
find $dir -executable -type f -exec file -i {} \; | grep -i "asci" | awk '{print substr($1, 0, length($1)-1)}' 
echo "--------"

