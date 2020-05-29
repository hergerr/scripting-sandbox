#!/bin/bash

fun1() {
  echo "Pierwsza"
}

fun1() {
  echo "Druga"
}

fun1 

# output
# tymek@PC:~/programs/bash/scripting-sandbox/homeworks$ ./first.sh 
# Druga