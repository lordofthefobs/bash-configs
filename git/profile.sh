load_file "git/git-fzf.sh"

# add git to path (for git-del)
export PATH=$PATH:$BASH_CONFIGS_DIR/git



# Aliases
alias gco="git checkout"
alias gcod="git checkout develop"
alias gcb="g.clipboard"
alias gcbco="g.clipboard.checkout"
alias g.clipboard.checkout='g.clipboard checkout'
alias g.clipboard="git $1 $(pbpaste)"
alias gsquash="git rebase -i HEAD~$1"

alias gbrname="git rev-parse --abbrev-ref HEAD"
alias gbrnamecopy="gbrname | pbcopy"

alias grsci="gr @sci git"

function gllsquash {
   git rebase -i HEAD~$1
}

function gllclone {
   git clone git@github.int.llabs.io:llabs/$1
}

function gllrebase {
   git rebase -i HEAD~$1
}

export PATH=$PATH:/Users/sang.park/dev/utils/git/git-plus