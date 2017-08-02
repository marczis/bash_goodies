#!/bin/bash

function rec()
{
    if [ "$REC" != "" ] ; then
        #Do record function call
        echo "$@" >> $RECDIR/$REC
    fi
    $@
}

rec ls
