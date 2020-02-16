#!/bin/bash
# script8.sh on 02_16_2020 by Thierry Cailleau following a https://www.udemy.com/course/bash-scripting and adapting for ubuntu
# Tested on Ubuntu 19.10
# $@ is equivalent to reading all the command line arguments like $1 $2 ... $0 is the bash script itself
# read -p "Enter a file or Folder: " FILEORFOLDER
FILEORFOLDERS=$@

for FILE in $FILEORFOLDERS
do
  if [ -f $FILE ]
  then
    echo "${FILE}: is a file"
  elif [ -d $FILE ]
  then
    echo "${FILE}: is a folder"
  else
    echo "${FILE}: is neither a file nor a folder"
  fi
  echo $FILEORFOLDER
  ls -l $FILEORFOLDER
done

# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ chmod +x script8.sh 
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script8.sh 
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script8.sh testfile
# testfile: is a file

# total 16
# -rwxr-xr-x 1 thierry thierry 2239 Feb 16 01:30 script4-1.sh
# -rwxr-xr-x 1 thierry thierry 1200 Feb  2 21:24 script4.sh
# -rwxr-xr-x 1 thierry thierry  591 Feb 16 01:29 script8.sh
# -rw-r--r-- 1 thierry thierry    0 Feb 15 13:54 testfile
# drwxr-xr-x 2 thierry thierry 4096 Feb 15 13:54 testfolder
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script8.sh testfolder
# testfolder: is a folder

# total 16
# -rwxr-xr-x 1 thierry thierry 2239 Feb 16 01:30 script4-1.sh
# -rwxr-xr-x 1 thierry thierry 1200 Feb  2 21:24 script4.sh
# -rwxr-xr-x 1 thierry thierry  591 Feb 16 01:29 script8.sh
# -rw-r--r-- 1 thierry thierry    0 Feb 15 13:54 testfile
# drwxr-xr-x 2 thierry thierry 4096 Feb 15 13:54 testfolder
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ 

# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ ./script8.sh testfolder testfile
# testfolder: is a folder

# total 16
# -rwxr-xr-x 1 thierry thierry 2239 Feb 16 01:30 script4-1.sh
# -rwxr-xr-x 1 thierry thierry 1200 Feb  2 21:24 script4.sh
# -rwxr-xr-x 1 thierry thierry 1686 Feb 16 01:32 script8.sh
# -rw-r--r-- 1 thierry thierry    0 Feb 15 13:54 testfile
# drwxr-xr-x 2 thierry thierry 4096 Feb 15 13:54 testfolder
# testfile: is a file

# total 16
# -rwxr-xr-x 1 thierry thierry 2239 Feb 16 01:30 script4-1.sh
# -rwxr-xr-x 1 thierry thierry 1200 Feb  2 21:24 script4.sh
# -rwxr-xr-x 1 thierry thierry 1686 Feb 16 01:32 script8.sh
# -rw-r--r-- 1 thierry thierry    0 Feb 15 13:54 testfile
# drwxr-xr-x 2 thierry thierry 4096 Feb 15 13:54 testfolder
# thierry@u1910:~/Documents/bashtest/bashscriptingcourse/myscripts$ 