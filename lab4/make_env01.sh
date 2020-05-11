#!/bin/bash

mkdir -p dir1/dir11
mkdir -p dir1/dir12

cd dir1/dir11
touch .hidden1 .hidden2 nothidden1 hiddenNot
cd ../dir12
ln -s /etc/nginx/sites-available/default .
touch .hidden3 nothidden2 NotHidden3
cd ..
ln -s /etc/nginx/sites-available/example ./przyklad
