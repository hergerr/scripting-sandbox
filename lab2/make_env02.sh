#/bin/bash

mkdir dir2
touch ex_file2
cd dir2

ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file2 /home/tymek/programs/bash/scripting-sandbox/lab2/dir2/ex_file2
ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file2 /home/tymek/programs/bash/scripting-sandbox/lab2/dir2/ex_fi2_link
ln -s /home/tymek/omg /home/tymek/programs/bash/scripting-sandbox/lab2/dir2/brokenlink
# ln -s ../ex_file2 ex_file2_relative
# ln -s ../ex_file2 /home/tymek/programs/bash/scripting-sandbox/lab2/dir2/ex_fi2_rel_2
