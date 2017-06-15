#!/bin/bash

function load_file() {
   if [ -f "$BASH_CONFIGS_DIR/$1" ]; then
      source "$BASH_CONFIGS_DIR/$1"
   fi
}

function load_profiles() {
   # load bash alias file
   load_file load_profiles.sh
}

function load_aliases() {
  # load bash alias file
  load_file load_aliases.sh
}

load_profiles
load_aliases

alias reload-all="load_profiles && load_aliases"
alias reload-profiles="load_profiles"
alias reload-aliases="load_aliases"
