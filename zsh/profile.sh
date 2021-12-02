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

export LESS=-R

export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# # PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'