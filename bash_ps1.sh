# terminal colors
## regular 
export BLACK="\[\033[0;30m\]" # Black
export RED="\[\033[0;31m\]" # Red
export GREEN="\[\033[0;32m\]" # Green
export YELLOW="\[\033[0;33m\]" # Yellow
export BLUE="\[\033[0;34m\]" # Blue
export PURPLE="\[\033[0;35m\]" # Purple
export CYAN="\[\033[0;36m\]" # Cyan
export WHITE="\[\033[0;37m\]" # White

## Light colors
export LIGHT_BLACK="\[\033[1;30m\]" # Black
export LIGHT_RED="\[\033[1;31m\]" # Red
export LIGHT_GREEN="\[\033[1;32m\]" # Green
export LIGHT_YELLOW="\[\033[1;33m\]" # Yellow
export LIGHT_BLUE="\[\033[1;34m\]" # Blue
export LIGHT_PURPLE="\[\033[1;35m\]" # Purple
export LIGHT_CYAN="\[\033[1;36m\]" # Cyan
export LIGHT_WHITE="\[\033[1;37m\]" # White

## High Intensity Colors
export HI_BLACK="\[\033[0;90m\]" # High Intensity Black
export HI_RED="\[\033[0;91m\]" # High Intensity Red
export HI_GREEN="\[\033[0;92m\]" # High Intensity Green
export HI_YELLO="\[\033[0;93m\]" # High Intensity Yellow
export HI_BLUE="\[\033[0;94m\]" # High Intensity Blue
export HI_PURPL="\[\033[0;95m\]" # High Intensity Purple
export HI_CYAN="\[\033[0;96m\]" # High Intensity Cyan
export HI_WHITE="\[\033[0;97m\]" # High Intensity White

# Background Colors
export BG_BLACK="\[\033[40m\]" # Black
export BG_RED="\[\033[41m\]" # Red
export BG_GREEN="\[\033[42m\]" # Green
export BG_YELLOW="\[\033[43m\]" # Yellow
export BG_BLUE="\[\033[44m\]" # Blue
export BG_PURPLE="\[\033[45m\]" # Purple
export BG_CYAN="\[\033[46m\]" # Cyan
export BG_WHITE="\[\033[47m\]" # White

## High Intensity Background Colors
export BG_HI_BLACK="\[\033[0;100m\]" # Black
export BG_HI_RED="\[\033[0;101m\]" # Red
export BG_HI_GREEN="\[\033[0;102m\]" # Green
export BG_HI_YELLO="\[\033[0;103m\]" # Yellow
export BG_HI_BLUE="\[\033[0;104m\]" # Blue
export BG_HI_PURPL="\[\033[10;95m\]" # Purple
export BG_HI_CYAN="\[\033[0;106m\]" # Cyan
export BG_HI_WHITE="\[\033[0;107m\]" # White


# retrieve the current git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

OLD_BASE_PS1="\h:\u \W"
BASE_PS1="\W"

# prompt will contain git branch version
GIT_PS1="$LIGHT_GREEN\$(parse_git_branch)$DEFAULT\$ "

# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):
fill="--- "

reset_style='\[\033[00m\]'
if [ -z "$VIM" ];
then status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color
else status_style=$reset_style'\[\033[0;90;107m\]'
fi
prompt_style=$reset_style
command_style=$reset_style'\[\033[1;29m\]' # bold black
date_style=$LIGHT_BLUE
# Prompt variable:

OLD_PS1="$PS1"
PS1="$status_style"'$fill '$date_style'\T\n'"$prompt_style$BASE_PS1$GIT_PS1$command_style"

# Reset color for command output
# (this one is invoked every time before a command is executed):
# trap 'echo -ne "\e[0m"' DEBUG


function prompt_command {

    # create a $fill of all screen width minus the time string and a space:
    let fillsize=${COLUMNS}-9
    fill=""
    while [ "$fillsize" -gt "0" ]
    do
        fill="-${fill}" # fill with underscores to work on 
        let fillsize=${fillsize}-1
    done

    # If this is an xterm set the title to user@host:dir
    case "$TERM" in
    xterm*|rxvt*)
        bname=`basename "${PWD/$HOME/~}"`
        echo -ne "\033]0;${bname}: ${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"
        ;;
    *)
        ;;
    esac
  
}
PROMPT_COMMAND=prompt_command
