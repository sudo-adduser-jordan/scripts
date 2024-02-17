#!/bin/sh

FILE=repositories.txt
USER=sudo-adduser-jordan

gh auth status
echo

for RESPOSITORY in `cat $FILE`
do
    git clone https://github.com/$USER/$RESPOSITORY
    echo
done
