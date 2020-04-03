#!/bin/bash

mkdir dir1
touch ex_file
cd dir1

ln -s /etc/nginx/sites-enabled/default ~/programs/bash/scripting-sandbox/lab2/dir1/default
ln -s /etc/nginx/sites-enabled/cos ~/programs/bash/scripting-sandbox/lab2/dir1/cos
ln -s /etc/nginx/sites-enabled/default ~/programs/bash/scripting-sandbox/lab2/dir1/lind_do_nginxa

ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_file ~/programs/bash/scripting-sandbox/lab2/dir1/ex_file
ln -s /home/tymek/programs/bash/scripting-sandbox/lab2/ex_filexx ~/programs/bash/scripting-sandbox/lab2/dir1/ex_filexx
ln -s ./ex_file ./nowedowiazanie
