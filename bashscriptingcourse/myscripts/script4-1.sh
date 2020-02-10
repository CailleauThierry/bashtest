#!/bin/bash
#!/bin/bash
if [ test -f FILEORFOLDER /etc/shadow ]
  then
    echo "This is not a File"
    if [ -d FILEORFOLDER /etc/shadow ]
      then
        echo "This is not a folder"
      else
        echo "This is a folder"
    fi
  else
      echo "This is a File"
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
