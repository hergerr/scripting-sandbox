#!/bin/bash

mkdir dir1
touch dir1/a dir1/b dir1/c dir1/d dir1/e dir1/f
chmod 744 dir1/a dir1/b
chmod 666 dir1/c dir1/d dir1/e dir1/f
cp /bin/ls dir1/

tee dir1/a <<DOC
#!/bin/bash

plaedsadsa
dsa
dsa
dsa

DOC

tee dir1/b <<DOC
#!/bin/dasmkdaso

plaedsadsa
dsa
dsa
dsa

DOC