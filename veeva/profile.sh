export DEV_TOOLS_ROOT="$HOME/dev/veevavault/dev_tools"
export VAGRANT_ROOT="$HOME/dev/veevavault/vagrant"

export PATH="$PATH:$HOME/.geminiw/bin"
export PATH="${PATH}:${DEV_TOOLS_ROOT}/GitUtils/bin:${DEV_TOOLS_ROOT}/PVMUtils/bin:/opt/homebrew/opt/mysql@8.0/bin"

alias vvlocal='sudo ssh -p 2222 -i ~/.vagrant.d/insecure_private_key root@my.vaultdev.com -L 443:127.0.0.1:8443 -L 80:127.0.0.1:8080 -L 4567:127.0.0.1:4567 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

alias sshLocal="cd $VAGRANT_ROOT/prebuilt; SSHUSER=root vagrant ssh"
alias sshVagrant='SSHUSER=root vagrant ssh'

alias hdCrm="$DEV_TOOLS_ROOT/deployment/hot_deploy_family.py -f vaultcrm_v"

alias vvgup='MEMORY=10000 vagrant up'

alias vcrmbuild='./gradlew build -x npmCleanInstall -x buildJSNode -x RunJSTests -x test -x aggregateJavadoc -x javadoc'
alias vcrmbuild.withtest='./gradlew build -x npmCleanInstall -x buildJSNode -x RunJSTests -x RunJSLint'

alias vcrmbuild.full='./gradlew build -x test -x RunJSTests'
alias vcrmbuild.full.withtest='./gradlew build'

alias vcrmtest="./gradlew test -x runJSTests -x runJSLint"
alias vcrmtest.full="./gradlew test"

alias hd.pvm1="./gradlew hotDeploy -PhotDeploy.host=sangpark-pvm-1.vaultpvm.com"
alias hd.pvm2="./gradlew hotDeploy -PhotDeploy.host=sangpark-pvm-2.vaultpvm.com"


# alias vcrmbuild='mvn clean install -T 2C -DskipTests -pl "-ui"'
# alias vcrmbuild.withtest='mvn clean install -T 2C -pl "-ui"'

# alias vcrmbuild.full.withtest='mvn clean install -T 2C'
# alias vcrmbuild.full='mvn clean install -T 2C -DskipTests'

# alias vcrmbuild.test="mvn clean test -T 2C"

function copy-jira() {
	local jira="$(git rev-parse --abbrev-ref HEAD | grep -Eo '((VCRM)|(CRM))-\d*')"
	echo "Jira is ${jira}"
	echo -n "$jira" | pbcopy
}

export SURVEY_P1_EPIC="epic.branch/233/VCRM-8015-Surveys"
export SURVEY_P2_EPIC="epic.branch/242/VCRM-27371-Survey-Phase-2"
export SURVEY_P3_EPIC="epic.branch/243/VCRM-36282-survey-phase3-translation"
export SURVEY_P4_EPIC="epic.branch/243/VCRM-53814-Surveys-for-ChildAccounts-epic"
export DOC_INT_CALL_EPIC="epic.branch/253/VCRM-40641_Documented_Interest_OL"
export DOC_INT_ACCOUNT_EPIC="epic.branch/252/VCRM-116631-Documented-Interest-AccountRelatedList-Epic"

export EPIC_BRANCH="epic.branch/251/VCRM-74400-Surveys-25R1.2"

alias gitepic="git checkout $EPIC_BRANCH"
alias gitmergeepic="git merge $EPIC_BRANCH"
# alias setfeatbranch="export FEAT_BRANCH=$(git rev-parse --abbrev-ref HEAD | grep -Eo '((VCRM)|(CRM))-\d*')"

alias vg.reload="MEMORY=10000 vagrant reload"

# PVM related aliases

function pvm-update-snapshot() {
	pushd
	cd ~/.m2/repository/com/veeva/vault/app/vaultcrm/vaultapp-package
	local snapshot_folder="sang.park@sangpark-pvm-2.vaultpvm.com:/home/sang.park/snapshots"
	scp -r "$1-SNAPSHOT" "$snapshot_folder"
	scp -r maven-metadata-local.xml "$snapshot_folder"
	popd
}

function pvm1() { 
	pvm $1 -i 1
}

function pvm2() { 
	pvm $1 -i 2
}

function pvms() {
	pvm $1 -i 1 && pvm $1 -i 2
}