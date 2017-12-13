#!/bin/bash

all_file=./Dockerfile
 > $all_file
for line in `cat ./v1.8.5.info`
do
  name=`echo $line | awk -F '/' '{print $3}' | awk -F ':' '{print $1}'`
  echo $name
  echo $line
  echo "FROM "$line > $name
  echo "FROM "$line >> $all_file
done
