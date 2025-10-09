#!/bin/sh
ROOT=/media
USER=user1
DRIVE=CORSAIR
FILE=names.txt

gh auth status
echo

for RESPOSITORY in `cat $FILE`
do
  cd $ROOT/$USER/$DRIVE/$RESPOSITORY && pwd && git pull
  echo    
done
