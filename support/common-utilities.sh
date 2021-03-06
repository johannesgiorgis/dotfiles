#!/usr/bin/env bash

###################################################################
#
# Common Utilities
# ----------------
#
# Common Utilities other functions can re-use
#
###################################################################


# VARIABLES

SCRIPT_BREAK="========================================================================================================================================="
LINE_BREAK="------------------------------------------------------------------------------------------------------------"

parentDirectory="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P)"
dotfilesDirectory="$(cd "$( dirname "$parentDirectory" )" && pwd -P)"


# FUNCTIONS


function convert_seconds_to_min() {
    runtime_seconds=$1
    printf %.2f\\n $(echo $runtime_seconds / 60 | bc -l)
}


# >>> OUTPUT DISPLAY FUNCTIONS

function print_stamp() {
    echo -e "\n$(date +'%F %T') $@";
}


function print_info() {
    printf "$(date +'%F %T')  [ \033[00;34m..\033[0m ] $1\n"
}


function user() {
    printf "$(date +'%F %T')  [ \033[0;33m??\033[0m ] $1\n"
}


function success() {
    printf "\033[2K$(date +'%F %T')  [ \033[00;32mOK\033[0m ] $1\n"
}


function fail() {
    printf "\033[2K$(date +'%F %T')  [\033[0;31mFAIL\033[0m] $1\n"
    echo ''
    exit
}


function warn() {
    printf "\033[2K$(date +'%F %T')  [\033[0;31mWARN\033[0m] $1\n"
    echo ''
}


function start() {
    printf "\033[2K$(date +'%F %T')  [\033[0;36mSTART\033[0m] $1\n"
    echo ''
}


function finished() {
    printf "\033[2K$(date +'%F %T')  [\033[0;36mDONE\033[0m] $1\n"
    echo ''
}

# <<< OUTPUT DISPLAY FUNCTIONS


print_info "Parent Directory:'$parentDirectory'"
print_info "Dotfiles Directory:'$dotfilesDirectory'"