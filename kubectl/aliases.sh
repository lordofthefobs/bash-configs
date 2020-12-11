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

    kubectl config set-context vcf-test --cluster=vzw.kube.dev.llabs.io --namespace=vcf-test --user=sang.park@avast.com
    kubectl config set-context vcf-stage --cluster=vzw.kube.dev.llabs.io --namespace=vcf-stage --user=sang.park@avast.com
    kubectl config set-context vcf-ext-stable --cluster=k8s.vzw.llabs.io --namespace=vcf-ext-stable --user=sang.park@avast.com
    kubectl config set-context vcf-prod --cluster=k8s.vzw.llabs.io --namespace=vcf-prod --user=sang.park@avast.com

    kubectl config set-context voda-test --cluster=voda.kube.dev.llabs.io --namespace=voda-test --user=sang.park@avast.com
    kubectl config set-context voda-stage --cluster=voda.kube.llabs.io --namespace=voda-stage --user=sang.park@avast.com
    kubectl config set-context voda-prod --cluster=voda.kube.llabs.io --namespace=voda-prod --user=sang.park@avast.com

    kubectl config set-context wind3-test --cluster=wind3.kube.dev.llabs.io --namespace=wind3-test --user=sang.park@avast.com
    kubectl config set-context wind3-stage --cluster=wind3.kube.llabs.io --namespace=wind3-stage --user=sang.park@avast.com
    kubectl config set-context wind3-prod --cluster=wind3.kube.llabs.io --namespace=wind3-prod --user=sang.park@avast.com

    kubectl config set-context kyivstar-test --cluster=kyivstar.kube.dev.llabs.io --namespace=kyivstar-test --user=sang.park@avast.com
    kubectl config set-context kyivstar-stage --cluster=kyivstar.kube.llabs.io --namespace=kyivstar-stage --user=sang.park@avast.com
    kubectl config set-context kyivstar-prod --cluster=kyivstar.kube.llabs.io --namespace=kyivstar-prod --user=sang.park@avast.com
}
