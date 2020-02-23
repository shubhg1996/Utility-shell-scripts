#!/bin/bash

opt=$1
path=`readlink -f $2`
relpath=${path#/mnt/c/Users/shubh/Documents/}
if [ $opt == "send" ]
then
    scp -r $path shubhgup@sherlock.stanford.edu:~/${relpath}
elif [ $opt == "get" ]
then
    scp -r shubhgup@sherlock.stanford.edu:~/${relpath} $path
else
    echo "Wrong OP"
fi
