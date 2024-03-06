#!/bin/sh
FILE=repositories.txt

gh auth status
for RESPOSITORY in `cat $FILE`
do
    gh repo clone $RESPOSITORY
done
