#!/bin/bash
# script_4_11_0.sh on 02_16_2020 by Thierry Cailleau following a https://www.udemy.com/course/bash-scripting
# Tested on Ubuntu 19.10
# This returns an infinite loop execution of this function since $0 contains the script name ready to be executed i.e. 
# "./script_4_11_0.sh":

CATETCSHADOW=cat /etc/shadow 
RESULT=$?
echo "echoing \$0"
echo "$0"

$0

# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ chmod +x script_4_11_0.sh
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script_4_11_0.sh
# echoing $0
# ./script_4_11_0.sh
# ./script_4_11_0.sh: line 7: /etc/shadow: Permission denied
# echoing $0
# ./script_4_11_0.sh
# ./script_4_11_0.sh: line 7: /etc/shadow: Permission denied