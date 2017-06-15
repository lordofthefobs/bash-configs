# load git completion
load_file git/git-completion.bash

load_file git/git-ext-completion.bash

# add git to path (for git-del)
export PATH=$PATH:$GRADLE_HOME/bin:$BASH_CONFIGS_DIR/git
