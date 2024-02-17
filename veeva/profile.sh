export DEV_TOOLS_ROOT="$HOME/dev/veevavault/dev_tools"
export VAGRANT_ROOT="$HOME/dev/veevavault/vagrant"

export PATH="${PATH}:${DEV_TOOLS_ROOT}/GitUtils/bin:${DEV_TOOLS_ROOT}/PVMUtils/bin"

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


export EPIC_BRANCH="epic.branch/233/VCRM-8015-Surveys"
export FEAT_BRANCH="sang.park/233/VCRM-12467-ST-remove-questions"

alias gitepic="git checkout $EPIC_BRANCH"
alias gitfeat="git checkout $FEAT_BRANCH"
alias gitmergeepic="git merge $EPIC_BRANCH"
alias gitmergefeat="git merge $FEAT_BRANCH"
# alias setfeatbranch="export FEAT_BRANCH=$(git rev-parse --abbrev-ref HEAD | grep -Eo '((VCRM)|(CRM))-\d*')"

alias vg.reload="MEMORY=10000 vagrant reload"

# PVM related aliases

function pvm1() { 
	pvm $1 -i 1
}

function pvm2() { 
	pvm $1 -i 2
}