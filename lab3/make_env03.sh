#!/bin/bash

mkdir -p dir1/dir11
mkdir dir2

touch /tmp/plik_do_linkowania

ln -s /tmp/plik_do_linkowania /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/dir11/symlinklink_do_pliku
ln /tmp/plik_do_linkowania /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/dir11/hardllink_do_pliku

touch dir1/dir11/to_nie_jest_link
touch /tmp/lolo
ln -s /tmp/lolo /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/dir11/symlink_w_zle_miejsca
ln /tmp/lolo /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/dir11/hardllink_w_zle_miejse


# ciekawe ...
# ln -s /tmp /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/symlink_w_zle_miejsca2
# ln /tmp /home/tymek/programs/bash/scripting-sandbox/lab3/dir1/hardllink_w_zle_miejse2