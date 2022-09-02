#!/bin/bash

#if [ -d .git ];
#then
#	echo "Git already initialized"
#else
#	git init
#	echo "Enter the URL"
#	read url
#	git remote add origin $url
#fi

git add .
echo "Enter commit message"
read msg
git commit -m "$msg"
txt="nothing to commit, working tree clean"

var=$(git status | awk "NR==5 {print $1}")

if [ "$var" = "$txt" ];
then
	echo "Nothing to commit"
else
	echo "Hyyy"
fi
