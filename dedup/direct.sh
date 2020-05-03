#!/bin/bash

# create directory of files with right params and add it to 
# listing in subfolder of this shell script called /tmp/direct
# assuming this folder exists.
# code copied from 'fslint' 





#added commment
echo "starting direct script" 
echo directory $1
devFmt = "\060"
find $1 -type f -printf "%h\0%f\0%s\0\n" | tee /tmp/direct/$2
