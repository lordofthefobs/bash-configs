#!/bin/bash

function load_file() {
  if [[ -f "$BASH_CONFIGS_DIR/$1" ]]; then
   	source "$BASH_CONFIGS_DIR/$1"
  fi
}

function load_profiles() {
   # load base profile
	load_file base/profile.sh

	# load zsh profile
	load_file zsh/profile.sh

	# load bash profile
	load_file bash/profile.sh

	load_file dev/profile.sh

	load_file node/profile.sh

	# # load git profile
	load_file git/profile.sh

	# # load docker profile
	load_file docker/profile.sh

	# load_file vagrant/profile.sh

	# load_file react-native/profile.sh

	load_file python/profile.sh

	# load_file gradle/profile.sh

	# load_file ios/profile.sh

	# load_file kubectl/profile.sh

	# load_file LL/profile.sh
}

load_profiles

alias reload-profiles="load_profiles"
