#!/bin/bash
# Backs up the full directory listing  in single project directory
# Ankit Ghanghas

if [ ! -d $1 ] # check if the directory listed as arguments exists or not
then
	echo 'The given directory does not exist'
	exit
fi

date=`date +\%F` # gets todays date
mkdir ~/$1_backup_$date # make a directory to store the backup

pd=`find . -type d -name $1` # finds the exact path to the specified directory
cp -R $pd  ~/$1_backup_$date # copies all the files from specified directory to the backup directort

echo Backup of $1 completed 
