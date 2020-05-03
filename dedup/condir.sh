#!/bin/bash

# reads output files in /tmp/direct folder, concats, sorts and filters unique values
FILES=/tmp/direct/*
OUTFILE=/tmp/dedup.txt

## concat all into one file
echo -n "" > $OUTFILE

for f in $FILES
do
  echo "processing $f ..."
  cat $f >> $OUTFILE
done
echo "done"

## sort on uniq

cat $OUTFILE |
# tr ' \t\0' '\0\1 ' | #remove spaces, tabs in file names

tr ' \t\0' '\0\1 ' |  #remove spaces, tabs in file names
sort -k3,3nr -k2,2 |
uniq -2 -D


