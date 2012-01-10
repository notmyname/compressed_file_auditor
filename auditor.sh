#!/bin/sh

CHECKER=`which gunzip`
QUAR=/tmp/

while [ $1 ]; do
    $CHECKER -t $1
    if [ $? != 0 ]; then
        # quarrantine
        mv $1 $QUAR/$1
    fi
    shift
done
