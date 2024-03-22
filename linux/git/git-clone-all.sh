#!/bin/sh
FILE=repositories.txt

gh auth status
echo

for RESPOSITORY in `cat $FILE`
do
    gh repo clone $RESPOSITORY
    echo
done
