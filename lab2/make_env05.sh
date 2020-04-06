#!/bin/bash

mkdir dir5
touch ex_file
cd dir5

ln -s /etc/nginx/sites-enabled/default ~/programs/bash/scripting-sandbox/lab2/dir5/default
ln -s /etc/nginx/sites-enabled/cos ~/programs/bash/scripting-sandbox/lab2/dir5/cos
ln -s /etc/nginx/sites-enabled/default ~/programs/bash/scripting-sandbox/lab2/dir5/lind_do_nginxa

ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file ~/programs/bash/scripting-sandbox/lab2/dir5/ex_file
ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_filexx ~/programs/bash/scripting-sandbox/lab2/dir5/ex_filexx
ln -s ./ex_file ./nowedowiazanie
