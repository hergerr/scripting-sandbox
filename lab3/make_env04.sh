#!/bin/bash

mkdir dir1
touch dir1/a dir1/b dir1/c dir1/d dir1/e dir1/f
chmod 744 dir1/a dir1/b
chmod 666 dir1/c dir1/d dir1/e dir1/f
cp /bin/ls dir1/