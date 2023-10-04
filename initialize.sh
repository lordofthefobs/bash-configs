#!/bin/bash

function load_file() {
  if [[ -f "$BASH_CONFIGS_DIR/$1" ]]; then
   	source "$BASH_CONFIGS_DIR/$1"
  fi
}

function load_profile() {
	load_file "$1/profile.sh"
}

function load_profiles() {
   # load base profile
	load_profile base

	# load zsh profile
	load_profile zsh

	# load bash profile
	load_profile bash

	load_profile dev

	load_profile node

	# # load git profile
	load_profile git

	# # load docker profile
	load_profile docker

	load_profile python

	load_profile veeva

	load_profile vagrant

	# load_profile react-native

	# load_profile gradle

	# load_profile ios

	# load_profile kubectl

	# load_profile LL
}

load_profiles

alias reload-profiles="load_profiles"
