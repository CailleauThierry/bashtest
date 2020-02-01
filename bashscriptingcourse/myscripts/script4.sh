#!/bin/bash
if [ -a /etc/shadow ]
  then
    echo "Shadow passwords are enabled."
    if [ -w /etc/shadow ]
      then
        echo "You have permissions to edit /etc/shadow."
      else
        echo "You do not have permissions to edit /etc/shadow."
    fi
    else
      echo "Shadow passwords are disabled."
fi
# script4.sh on 02_01_2020 by Thierry Cailleau following a https://www.udemy.com/course/bash-scripting
# Tested on Ubuntu 19.10
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ chmod +rwx ./script4.sh 
#thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4.sh 
#Shadow passwords are enabled.
#You do not have permissions to edit /etc/shadow.
