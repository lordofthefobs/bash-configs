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

alias gst="git status"

alias gsts="git stash"
alias gstsp="git stash pop"

alias gbrname="git rev-parse --abbrev-ref HEAD"
alias gbrnamecopy="gbrname | pbcopy"

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

function pushb {
   local branch=$1
   
   if [[ -z "$branch" ]]
   then
      branch=$(git rev-parse --abbrev-ref HEAD)
   fi

   echo "pushing branch $branch"
   if [[ -z $PUSHB ]]
   then
      export PUSHB="$branch"
   else
      export PUSHB="$branch:$PUSHB"
   fi

   echo $PUSHB
}

function clearb {
   export PUSHB=""
}

function popb {
   if [[ -z $PUSHB ]]
   then
      echo "no branches to pop"
      return
   fi

   local branches=(${(@s/:/)PUSHB})

   local popped=(${branches[1]})

   local new_branches=${branches[@]:1}
   local new_branches=(${=new_branches})

   echo "Popping branch $popped"
   export PUSHB="${(@j/:/)new_branches}"

   git checkout $popped
}