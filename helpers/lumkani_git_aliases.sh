#!/bin/bash
alias lcurrbranch='git rev-parse --abbrev-ref HEAD'
f_lsetup() {
    git branch master --quiet --set-upstream-to origin/master
    git config branch.autosetuprebase always
    git config branch.master.rebase true
    git config branch.$(lcurrbranch).rebase true
    git config push.followTags true
}
alias lsetup=f_lsetup
alias lpull='lsetup && git pull --rebase origin $(lcurrbranch)'
alias lpush='lsetup && git push origin $(lcurrbranch)'
f_lmerge() {
    if [ $1 ]
    then
        thatbranch=$1
        thisbranch=$(lcurrbranch)
        git merge --no-ff -m "Merging $thatbranch into $thisbranch [$2]" $thatbranch
    else
        echo 'Merging from other branch to current branch'
        echo '-----------------------------------------'
        echo 'Usage: lmerge <other_branch> [commit_msg]'
    fi
}
alias lmerge=f_lmerge
f_lfeaturebranch() {
    if [ $1 ]
    then
        newbranch=$1
        git checkout -b $newbranch
        lsetup
    else
        echo 'Creates a feature branch from the current one'
        echo '-----------------------------------------'
        echo 'Usage: lfeaturebranch <new_branch>'
    fi
}
alias lfeaturebranch=f_lfeaturebranch``