[ -z $ZSH_NAME ] && return


# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup iTerm shell integration 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# activate Antigen
source /usr/local/share/antigen/antigen.zsh
antigen init "$BASH_CONFIGS_DIR/zsh/antigenrc"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi  