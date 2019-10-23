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

function setup_kubectl_contexts() {
    kubectl config set-context afp-test --cluster=att.kube.dev.llabs.io --namespace=afp-test --user=sang.park@avast.com
    kubectl config set-context afp-stage --cluster=att.kube.dev.llabs.io --namespace=afp-stage --user=sang.park@avast.com
    kubectl config set-context afp-lab --cluster=att.kube.llabs.io --namespace=afp-lab --user=sang.park@avast.com
    kubectl config set-context afp-prod --cluster=att.kube.llabs.io --namespace=afp-prod --user=sang.park@avast.com

    kubectl config set-context ring-dev --cluster=ott.kube.dev.llabs.io --namespace=ring-dev --user=sang.park@avast.com
    kubectl config set-context ring-lab --cluster=ott.kube.llabs.io --namespace=ring-lab --user=sang.park@avast.com
    kubectl config set-context ring-prod --cluster=ott.kube.llabs.io --namespace=ring-prod --user=sang.park@avast.com

    kubectl config set-context tmo-dev --cluster=ott.kube.dev.llabs.io --namespace=tmo-dev --user=sang.park@avast.com
    kubectl config set-context tmo-prod --cluster=ott.kube.llabs.io --namespace=tmo-prod --user=sang.park@avast.com
}