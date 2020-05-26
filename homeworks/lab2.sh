#!/bin/bash
x="0123456789"

echo ${$1:1:3}
echo ${x:1:-3}

# Output
# tymek@PC:~/programs/bash/scripting-sandbox/homeworks$ ./lab2.sh
# 123
# 123456