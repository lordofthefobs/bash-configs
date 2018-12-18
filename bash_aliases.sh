### ls aliases ###

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

### CD Aliases ###

alias cd.tux="cd ~/dev/tux_aci/tux_aci"
alias cd.acideploy="cd ~/dev/acideploy/acideploy"
alias cd.personal="cd ~/dev/personal"

alias cdp="cd -"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias o="open"
alias op="open"

### Markdown Aliases ###

alias mdless="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | less"
alias mdcat="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | cat"
alias mdtail="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | tail"

alias g="grep"