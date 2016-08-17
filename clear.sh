#!/bin/bash 

function clean {
    cleanFolder
    for i in $( find . -type d ! -wholename "."| grep -v ".*\.git.*" | cut -d '/' -f2 ); do
        cd $i
        clean
        cd ..
    done
}

function cleanFolder {
    rm -rf ./*.log
    rm -rf ./*.aux
    rm -rf ./*.out
    rm -rf ./*.pdf
    rm -rf ./*.gz
    rm -rf ./*.toc
    echo `pwd` cleared
}

clean
