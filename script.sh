#!/bin/bash
#Date:24/01/23

echo "welcome" | tee project{1..10}.txt >/dev/null

echo "enter a var1 value"
read var1
echo

echo "enter a var2 value"
read var2
echo


if [ $var1 -eq $var2 ]
then
 tar -zcvf script.tar.gz .
 git init
 git add script.tar.gz
 git status
 git commit -m "tar is pushed to remote repository"
 git checkout -b master
 git remote add origin https://github.com/jeevaa-code/guvi-task-round-1.git
 git push origin master
else
 git init
 git add .
 git status
 git commit -m "entire directory is pushed"
 git checkout -b develop
 git remote add origin https://github.com/jeevaa-code/guvi-task-round-1.git
 git push origin develop
fi
