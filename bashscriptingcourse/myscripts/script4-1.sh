#!/bin/bash
# script4-1.sh on 02_16_2020 by Thierry Cailleau following a https://www.udemy.com/course/bash-scripting and adapting for ubuntu
# Tested on Ubuntu 19.10

read -p "Enter a file or Folder: " FILEORFOLDER
if [ -f $FILEORFOLDER ]
  then
    echo "$FILEORFOLDER is a file from then"
    if [ -d $FILEORFOLDER ]
      then
        echo "$FILEORFOLDER is a folder from then"
      else

      echo "$FILEORFOLDER is not a folder from then"
    fi
  else
    echo "$FILEORFOLDER is not a file from else"
    if [ -d $FILEORFOLDER ]
      then
        echo "$FILEORFOLDER is not a folder from else"
      else
        echo "$FILEORFOLDER is a folder from else"
    fi
fi

# thierry@u1910:~/Documents/bashtest$ test -f testfile;echo $?
# 0
# thierry@u1910:~/Documents/bashtest$ test -d testfile;echo $?
# 1
# thierry@u1910:~/Documents/bashtest$ test -d testfolder;echo $?
# 0
# thierry@u1910:~/Documents/bashtest$ test -f testfolder;echo $?
# 1
# result of working script on 02_16_2020 
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ chmod +x script4-1.sh 
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4-1.sh 
# ./script4-1.sh: line 3: [: too many arguments
# This is a File
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ mkdir testfolder
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ touch testfile
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4-1.sh testfolder
# Enter a file or Folder: testfile
# testfile is not a file
# testfile is a folder
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4-1.sh testfolder
# Enter a file or Folder: testfile
# testfile is not a file first then
# testfile is a folder first then
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4-1.sh testfolder
# Enter a file or Folder: testfile
# testfile is a file from then
# testfile is not a folder from then
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script4-1.sh testfolder
# Enter a file or Folder: testfoler
# testfoler is not a file from else
# testfoler is a folder from else
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ 