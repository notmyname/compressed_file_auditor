#!/bin/sh

CHECKER=`which gunzip`
CHECKER_OPTIONS="-t"
MOVER=`which mv`
QUAR=/tmp/

while [ $1 ]; do
    $CHECKER $CHECKER_OPTIONS $1
    if [ $? != 0 ]; then
        # quarrantine
        $MOVER $1 $QUAR/$1
    fi
    shift
done
