#!/bin/bash

base_path=`readlink -f $1` 
name=$2

sudo ln -s $base_path /usr/local/bin/${name}
