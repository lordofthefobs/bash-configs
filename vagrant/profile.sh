if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi

export VAGRANT_DEFAULT_PROVIDER=virtualbox

# Aliases

alias vg="vagrant"

alias vg.halt="vagrant halt"

alias vg.ssh.core="vagrant ssh core"
alias vg.ssh.services="vagrant ssh services"

alias vg.st="vagrant status"
alias vg.status="vg.st"

alias vs.reload="vagrant reload"

alias vg.up="vagrant up"
