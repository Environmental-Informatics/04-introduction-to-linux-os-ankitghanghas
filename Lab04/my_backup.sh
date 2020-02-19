#!/bin/bash
# Backs up the full directory listing  in single project directory
# Ankit Ghanghas

if [ ! -d $1 ]
then
	echo 'The given directory does not exist'
	exit
fi

date=`date +\%F`
mkdir ~/$1_backup_$date

pd=`find . -type d -name $1`
cp -R $pd  ~/$1_backup_$date

echo Backup of $1 completed 
