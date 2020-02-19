#!/bin/bash
# Gives info about the directory
file=`ls -l $1 | grep "^-" | wc -l`
folder=`ls -l $1 | grep "^d" | wc -l`
largest=`find $1 -type f -printf "%p\n" | sort -n | tail -1`
latest=`ls $1 -Art | tail  -n 1`
owners=`find $1 -printf '%u:%g\n' | sort -t: -u`
echo There are $file files in the $1 directory
echo There are $folder directories/folders in $1 directory
echo The largest file in the directory is $largest
echo $latest is the last modified file in the directory
echo The files in the directory are owned by $owners
