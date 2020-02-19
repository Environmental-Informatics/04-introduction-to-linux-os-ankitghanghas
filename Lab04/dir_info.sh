#!/bin/bash
# Gives info about the directory
file=`ls -l $1 | grep "^-" | wc -l` # grep groups all the files starting with - and wc -l counts the number of lines- so in a way the total number of files.
folder=`ls -l $1 | grep "^d" | wc -l` # similar to above, grep here groups all the folders using "^d"
largest=`find $1 -type f -printf "%p\n" | sort -n | tail -1` # printf prints the file names and sort -n sorts them according to size and tail -1 picks the last largest file in the sorted list
latest=`ls $1 -Art | tail  -n 1` # -Art sorts file by their last time modified and tail picks up the last giving most recent file
owners=`find $1 -printf '%u:%g\n' | sort -t: -u`
echo There are $file files in the $1 directory
echo There are $folder directories/folders in $1 directory
echo The largest file in the directory is $largest
echo $latest is the last modified file in the directory
echo The files in the directory are owned by $owners
