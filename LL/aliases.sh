alias deploy.aci="./deploy.sh 2>&1>deploy.log"
alias bepod="bundle exec pod"
alias be="bundle exec"

# Project Specific aliases

## TMO_DEPLOY
function deploy.tmofw() {
   ansible-playbook -i inventory/vagrant.inv tmofw.yml -e "artifactory_repo_java_project=repository repo_address=file://$HOME/.m2"
}

function deploy.tmofw.locator() {
   ansible-playbook -i inventory/vagrant.inv tmofw.yml -e "artifactory_repo_java_project=repository repo_address=file://$HOME/.m2" --tag tmobilelocator
}

function deploy.update.build.suffix() {
   local suffix=$(date +%H%M%s)
   export BUILD_SUFFIX=".local.$suffix"
}
alias deploy.gradle="gradle clean && gradle buildAll install"
alias deploy.gradle.locator="gradle :locator:clean && gradle buildAll install"
alias deploy.gradle.tmo.all="deploy.update.build.suffix && deploy.gradle"
alias deploy.gradle.tmo.locator="deploy.update.build.suffix && deploy.gradle.locator"

function bundle_deploy_setup() {
   # vagrant ssh sfl-web -c 
   # vagrant ssh sfp-alert -c 
   # vagrant ssh sfp-core -c 
   # vagrant ssh sfp-db -c 
   # vagrant ssh sfp-int -c 
   # vagrant ssh sfp-tux -c 
   # vagrant ssh smc-web -c 

   # vagrant ssh sfl-web -c 'sudo apt-get update --fix-missing'
   # vagrant ssh sfp-alert -c 'sudo apt-get update --fix-missing'
   # vagrant ssh sfp-core -c 'sudo apt-get update --fix-missing'
   # vagrant ssh sfp-db -c 'sudo apt-get update --fix-missing'
   # vagrant ssh sfp-int -c 'sudo apt-get update --fix-missing'
   # vagrant ssh sfp-tux -c 'sudo apt-get update --fix-missing'
   # vagrant ssh smc-web -c 'sudo apt-get update --fix-missing'

   # vagrant ssh sfl-web -c 'sudo apt-get -f install'
   # vagrant ssh sfp-alert -c 'sudo apt-get -f install'
   # vagrant ssh sfp-core -c 'sudo apt-get -f install'
   # vagrant ssh sfp-db -c 'sudo apt-get -f install'
   # vagrant ssh sfp-int -c 'sudo apt-get -f install'
   # vagrant ssh sfp-tux -c 'sudo apt-get -f install'
   # vagrant ssh smc-web -c 'sudo apt-get -f install'

   # vagrant ssh sfl-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh sfp-alert -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh sfp-core -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh sfp-db -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh sfp-int -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh sfp-tux -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'
   # vagrant ssh smc-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "libcrypt-ssleay-perl" "nmap" "unixodbc"'

   # vagrant ssh sfl-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-alert -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-core -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-db -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-int -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-tux -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh smc-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libltdl7_2.4.2-1ubuntu1_amd64.deb'

   # vagrant ssh sfl-web -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-alert -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-core -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-db -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-int -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-tux -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'
   # vagrant ssh smc-web -c 'sudo dpkg -i libltdl7_2.4.2-1ubuntu1_amd64.deb'

   # vagrant ssh sfl-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh sfp-alert -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh sfp-core -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh sfp-db -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh sfp-int -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh sfp-tux -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'
   # vagrant ssh smc-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "python-pycurl" "python-httplib2" "snmpd" "ntp" "linux-crashdump" "kdump-tools"'

   # vagrant ssh sfl-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-alert -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-core -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-db -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-int -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-tux -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh smc-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/universe/m/makedumpfile/kdump-tools_1.3.7-2_all.deb'

   # vagrant ssh sfl-web -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-alert -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-core -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-db -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-int -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh sfp-tux -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'
   # vagrant ssh smc-web -c 'sudo dpkg -i kdump-tools_1.3.7-2_all.deb'

   # vagrant ssh sfl-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh sfp-alert -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh sfp-core -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh sfp-db -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh sfp-int -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh sfp-tux -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'
   # vagrant ssh smc-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "oracle-java6-installer"'

   # vagrant ssh sfl-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-alert -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-core -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-db -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-int -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-tux -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'
   # vagrant ssh smc-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/j/java-common/java-common_0.43ubuntu2_all.deb'

   # vagrant ssh sfl-web -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-alert -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-core -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-db -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-int -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh sfp-tux -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'
   # vagrant ssh smc-web -c 'sudo dpkg -i java-common_0.43ubuntu2_all.deb'

   # vagrant ssh sfl-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh sfp-alert -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh sfp-core -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh sfp-db -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh sfp-int -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh sfp-tux -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'
   # vagrant ssh smc-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "apache2" "libapache2-mod-jk"'

   # vagrant ssh sfl-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-alert -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-core -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-db -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-int -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-tux -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh smc-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/a/apr/libapr1_1.4.6-1_amd64.deb'

   # vagrant ssh sfl-web -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-alert -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-core -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-db -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-int -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh sfp-tux -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'
   # vagrant ssh smc-web -c 'sudo dpkg -i libapr1_1.4.6-1_amd64.deb'

   # vagrant ssh sfl-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh sfp-alert -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh sfp-core -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh sfp-db -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh sfp-int -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh sfp-tux -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'
   # vagrant ssh smc-web -c 'sudo /usr/bin/apt-get -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"   install "erlang-nox"'

   # vagrant ssh sfl-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-alert -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-core -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-db -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-int -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-tux -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh smc-web -c 'wget http://us.archive.ubuntu.com/ubuntu/pool/main/e/erlang/erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'

   # vagrant ssh sfl-web -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-alert -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-core -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-db -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-int -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh sfp-tux -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'
   # vagrant ssh smc-web -c 'sudo dpkg -i erlang-snmp_14.b.4-dfsg-1ubuntu1_amd64.deb'

   # vagrant ssh sfl-web -c 
   # vagrant ssh sfp-alert -c 
   # vagrant ssh sfp-core -c 
   # vagrant ssh sfp-db -c 
   # vagrant ssh sfp-int -c 
   # vagrant ssh sfp-tux -c 
   # vagrant ssh smc-web -c 
   echo "done"
}