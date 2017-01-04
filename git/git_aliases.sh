alias gco="git checkout"
alias gcod="git checkout develop"
alias gcb="g.clipboard"
alias gcbco="g.clipboard.checkout"
alias g.clipboard.checkout='g.clipboard checkout'
alias g.clipboard="git $1 $(pbpaste)"
alias gsquash="git rebase -i HEAD~$1"

alias grepolist="ssh git@git repolist"
alias grepo="grepolist | grep"

alias grsci="gr @sci git"

function gllsquash {
   git rebase -i HEAD~$1
}

function gllclone {
   git clone git@git.locationlabs.com:$1 -b develop
}

function gllrebase {
   git rebase -i HEAD~$1
}

export PATH=$PATH:/Users/sang.park/dev/utils/git/git-plus