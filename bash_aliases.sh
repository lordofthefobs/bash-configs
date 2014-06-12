### Load Files

# load .bashrc file
if [ -f $BASH_CONFIG_DIR/bashrc.sh ]; then
   source $BASH_CONFIG_DIR/bashrc.sh
fi

# load .bash_ps1
if [ -f $BASH_CONFIG_DIR/bash_ps1.sh ]; then
   source $BASH_CONFIG_DIR/bash_ps1.sh
fi	

# load git aliases
if [ -f $BASH_CONFIG_DIR/git_aliases.sh ]; then
	source $BASH_CONFIG_DIR/git_aliases.sh
fi

if [ -f "$BASH_CONFIG_DIR/scripts/.git-completion.bash" ]; then
	. $BASH_CONFIG_DIR/scripts/.git-completion.bash
fi

# load vagrant aliases
if [ -f $BASH_CONFIG_DIR/vagrant_aliases.sh ]; then
	source $BASH_CONFIG_DIR/vagrant_aliases.sh
fi	

### CD Aliases ###

alias cd.tux="cd ~/dev/tux_aci/tux_aci"
alias cd.acideploy="cd ~/dev/acideploy/acideploy"
alias cd.personal="cd ~/dev/personal"
