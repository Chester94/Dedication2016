#!/bin/bash 

for i in $( find . -type f -regex ".*\.log\|.*\.aux\|.*\.out\|.*\.pdf\|.*\.gz\|.*\.toc" ); do
    rm $i
done
