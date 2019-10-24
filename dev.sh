#!/bin/bash
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\e[0;33m'

export PROJ_BASE="$(dirname "${BASH_SOURCE[0]}")"

CD=$(pwd)
cd "$PROJ_BASE"
export PROJ_BASE=$(pwd)
cd $CD

. helpers/lumkani_git_aliases.sh

function devhelp {
    echo -e "${GREEN}devhelp${RESTORE}              Prints this ${RED}help${RESTORE}"
    echo -e ""
    echo -e "${GREEN}blog-run${RESTORE}             Runs blog locally"
    echo -e ""
}


function blog-run {
    CD=$(pwd)
    cd "$PROJ_BASE"

    yarn install
    yarn dev

    cd $CD
}

function _create_git_aliases {
    git config alias.co checkout
    git config alias.st status
    git config alias.ci commit
    git config alias.br branch
    git config alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
}
function echo_red {
    echo -e "\e[31m$1\e[0m";
}

function echo_green {
    echo -e "\e[32m$1\e[0m";
}

function echo_yellow {
    echo -e "${YELLOW}$1${RESTORE}";
}
_create_git_aliases
_copy_git_hooks

echo_green "Welcome to lumkani-blog's dev env"
echo_green "Hint: autocomplete works for the commands below ;)"
echo_red   "------------------------------------------------------------------------"
devhelp
