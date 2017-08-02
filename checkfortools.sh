#!/bin/bash

#Checks and install missing tools for your script.

function _install_tool()
{
    which apt &> /dev/null && echo "apt update ; apt install -y"
    which dnf &> /dev/null && echo "dnf install -y"
}

function _checkfortools()
{
    local tools="tmux git bash dnsmasq ip killall iptables jq js curl tshark" 
    for i in $tools ; do
        which $i &> /dev/null
        if [ $? -ne 0 ] ; then
            echo "You missing $i, let me try to install it for you"
            sudo $(_install_tool) $i || exit 1
        fi
    done
}
