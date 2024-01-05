#!/bin/bash

filename=$1

if [ -f "$filename" ] && [ -w "$filename" ]
then
         echo "hello" > $filename
else
         touch "$filename"
         echo "hello" > $filename
fi

#We then check if it exists and if it has write permissions. If it has write perms then we echo “hello” to it. If it is either non-accessible or doesn't exist we will create the file and echo “hello” to it.
