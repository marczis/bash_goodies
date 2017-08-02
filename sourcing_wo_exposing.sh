#!/bin/bash

function src()
{
    source $(dirname $0)/inc/$1
}

src "functions.sh"
