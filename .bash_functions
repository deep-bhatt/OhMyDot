#!/usr/bin/bash
# Reload this script
function reload() {
    source ~/.bash_functions
}

# cd in dir and do ls
function cl() {
    DIR="$*";
    # if no DIR given, go home
    if [ $# -lt 1 ]; then
        DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls -F --color=auto
}

# Generate random letters and digits
function random_strs() {
    if [ -z $1 ]
        then
         echo "Usage: random_strs LENGTH"
    else
        echo "$(cat /dev/urandom | tr -dc A-Za-z0-9 | head -c $1 ; echo '')"
    fi
}

# JP-FREE#1-3 US-FREE#1-5 NL-FREE#1-9
# Usage: pc NL 8
function pc() {
    sudo protonvpn connect "$1-FREE#$2"
}

# Connect to the fastest server
function pf() {
    # If no country code in argument
    if [ $# -eq 0 ]
    then
        echo "Connecting to the fastest server..."
        sudo protonvpn connect -f
    else
        echo "Connecting to $1 fastest server..."
        sudo protonvpn connect --cc "$1"
    fi
}

# Disconnect
function pd() {
    sudo protonvpn disconnect
}

# Dictionary
# $1 -> m for match, d -> define
# $2 -> word
function dict() {
    curl dict://dict.org/$1:$2 -s | tail -n +3 | head -n -3 | less
}
