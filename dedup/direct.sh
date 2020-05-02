#!/bin/bash

# create directory of files with right params and add it to 
# listing in subfolder of this shell script called /tmp/direct
# assuming this folder exists.
# code copied from 'fslint' 




for arg
do
    case "$arg" in
    -h|--help|-help)
        Usage ;;
    -v|--version)
        Version ;;
    --summary)
        mode="summary" ;;
    --gui)
        # Undocumented option to avoid extra
        # hardlink merging already done in GUI
        gui=1 ;;
    -m)
        mode="merge" ;;
    -d)
        mode="del" ;;
    -s)
        mode="symlink" ;;
    -t)
        t="t" ;;
    esac
done

#added commment

echo directory $1

find $1 -type f -printf "'%s','%f','%h'\n" 
