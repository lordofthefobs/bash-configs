[ -z $BASH ] && return


shopt -s autocd

## iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

load_file bash/bash_ps1.sh