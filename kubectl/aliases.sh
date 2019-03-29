#!/usr/bin/env bash

alias kb="kubectl"

function kbg() {
  array=( $@ )
  len=${#array[@]}
  search=${array[$len-1]}
  kubeargs=${array[@]:0:$len-1}

  kb get $kubeargs | awk "NR==1 || /$search/"
}

alias kb.use='kb config use-context'
