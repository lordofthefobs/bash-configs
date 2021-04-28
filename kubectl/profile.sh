# Aliases

alias k="kubectl"
complete -F __start_kubectl k

function kg() {
  array=( $@ )
  len=${#array[@]}
  search=${array[$len-1]}
  kubeargs=${array[@]:0:$len-1}

  k get $kubeargs | awk "NR==1 || /$search/"
}

alias k.use='kb config use-context'

