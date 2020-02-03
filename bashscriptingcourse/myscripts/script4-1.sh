#!/bin/bash
#!/bin/bash
if [ test -a FILE /etc/shadow ]
  then
    echo "Shadow passwords are enabled."
    if [ -w FILE /etc/shadow ]
      then
        echo "You have permissions to edit /etc/shadow."
      else
        echo "You do not have permissions to edit /etc/shadow."
    fi
    else
      echo "Shadow passwords are disabled."
fi
# script4-1.sh on 02_01_2020 by Thierry Cailleau following a https://www.udemy.com/course/bash-scripting
# Tested on Ubuntu 19.10
# thierry@u1910:~/Documents/bashtest$ test -f testfile;echo $?
# 0
# thierry@u1910:~/Documents/bashtest$ test -d testfile;echo $?
# 1
# thierry@u1910:~/Documents/bashtest$ test -d testfolder;echo $?
# 0
# thierry@u1910:~/Documents/bashtest$ test -f testfolder;echo $?
# 1
