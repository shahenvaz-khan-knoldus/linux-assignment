#!/bin/bash
choice="yes"
while [ $choice == "yes" ]
do
        echo "Enter directory you want to search"
	read directory
	echo "Enter number of days "
	read days
	result=$(find $directory -mtime +$days -print)
	if [ "$result" == "" ]
	then
		echo "No files found older than $days"
	else
		echo "Here are file older than $days"
		find $directory -mtime +$days -print -ls 
	fi
	echo "Type yes to continue and no for exit"
	read choice
done
