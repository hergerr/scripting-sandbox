#!/bin/bash

mkdir dir1 dir2 targer_dir
touch target_file

cp /usr/share/backgrounds/*.png dir1/
cp /usr/share/backgrounds/*.png dir2/

cd dir1
mkdir d1 d2
touch f1 f2
chmod 207 d1
cd ../dir2
mkdir d3 d4
touch f3 f4
chmod 077 d4

ln -s /home/tymek/programs/bash/scripting-sandbox/lab3/targer_dir /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/link_do_katalogu
ln -s /home/tymek/programs/bash/scripting-sandbox/lab3/target_file /home/tymek/programs/bash/scripting-sandbox/lab3/dir2/link_do_pliku
cd ..

