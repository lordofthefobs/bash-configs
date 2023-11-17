export DEV_TOOLS_ROOT="~/dev/veevavault/dev_tools"
export VAGRANT_ROOT="~/dev/veevavault/vagrant"

alias vvlocal='sudo ssh -p 2222 -i ~/.vagrant.d/insecure_private_key root@my.vaultdev.com -L 443:127.0.0.1:8443 -L 80:127.0.0.1:8080 -L 4567:127.0.0.1:4567 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

alias sshLocal="cd $VAGRANT_ROOT/prebuilt; SSHUSER=root vagrant ssh"
alias sshVagrant='SSHUSER=root vagrant ssh'

alias hdCrm="$DEV_TOOLS_ROOT/deployment/hot_deploy_family.py -f vaultcrm_v"

alias vvgup='MEMORY=10000 vagrant up'

function copy-jira() {
	local jira="$(git rev-parse --abbrev-ref HEAD | grep -Eo '((VCRM)|(CRM))-\d*')"
	echo "Jira is ${jira}"
	echo -n "$jira" | pbcopy
}
