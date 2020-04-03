#!/bin/bash

mkdir dir41
mkdir dir42

cd dir41
touch file1 file2 file3 file4 file5
chmod +x file1 file3 file5

ln file3 ../dir42/hardlink_to_3

mkdir subdir1 subdir2
cd subdir1
touch file6
