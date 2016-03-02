
# load .bashrc file
load_file  bashrc.sh

# load .bash_ps1
load_file bash_ps1.sh

# load git profile
load_file git/git_profile.sh

# load docker profile
load_file docker/docker_profile.sh

# load vagrant profile
load_file vagrant/vagrant_profile.sh

# LocationLabs-specific stuff
[[ -s "$HOME/.bashrc_ll" ]] && source "$HOME/.bashrc_ll"