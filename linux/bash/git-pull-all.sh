#!/bin/sh

FILE=repositories.txt
USER=sudo-adduser-jordan
DRIVE=D://

gh auth status
echo

for RESPOSITORY in `cat $FILE`
do
    cd $DRIVE/$RESPOSITORY
    git pull
    echo
done
