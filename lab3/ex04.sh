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
# this awk cuts colon (last). first column, starting at first sign, length the end -1
find $dir -executable -type f -exec file -i {} \; | grep -i "asci" | awk '{ print substr($1, 0, length($1)-1) }'
echo "--------"


echo "Ex c: "
files=`find $dir -executable -type f -exec file -i {} \; | grep -i "asci" | awk '{ print substr($1, 0, length($1)-1) }'`

for file in $files
do
    # getting shebang
    shebang=`head --lines 1 $file`

    # deleting # and !
    path=${shebang:2}

    # exists?
    exists=`which $path`
    if [ $exists ]; then
        echo $file
    fi
done
echo "--------"


echo "Ex d":
# those modified in last 7 days
find $dir -executable -type f -mtime -7 -printf "WARNING: %p modified in last 7 days\n"
# rest of executable files in directory
find $dir -executable -type f -mtime +7