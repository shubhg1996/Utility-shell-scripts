#!/bin/bash

opt=$1
path=`readlink -f $2`
relpath=${path#/mnt/c/Users/mg220/Documents/}
if [ $opt == "send" ]
then
    scp -r $path sherlock:~/${relpath}
elif [ $opt == "get" ]
then
    scp -r sherlock:~/${relpath} $path
else
    echo "Wrong OP"
fi
