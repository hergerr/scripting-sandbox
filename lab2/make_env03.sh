#/bin/bash

mkdir dir3
touch ex_file3
cd dir3

ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file3 /home/tymek/programs/bash/scripting-sandbox/lab2/dir3/ex_file3
ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file3 /home/tymek/programs/bash/scripting-sandbox/lab2/dir3/ex_fi3_link
ln -s /home/tymek/omg /home/tymek/programs/bash/scripting-sandbox/lab2/dir3/brokenlink
# ln -s ../ex_file3 ex_file3_relative
# ln -s ../ex_file3 /home/tymek/programs/bash/scripting-sandbox/lab2/dir3/ex_fi3_rel_3
