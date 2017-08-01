#!/bin/bash

#function usage()
#{
#}

function param()
{
    local value=$1
    local target=$2
    local help=$3

    if [ -z "$value" ] ; then
        usage
        echo $help
        return -1
    fi
    
    eval $2="$value"
    return 0
}

#usage
#param "$1" PRODUCT "Missing product: <a | b>" || exit
#param "$2" VERSION "Missing <version_number>" || exit

