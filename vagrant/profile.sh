if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi

export VAGRANT_DEFAULT_PROVIDER=virtualbox