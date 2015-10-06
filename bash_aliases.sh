### ls aliases ###

alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

### CD Aliases ###

alias cd.tux="cd ~/dev/tux_aci/tux_aci"
alias cd.acideploy="cd ~/dev/acideploy/acideploy"
alias cd.personal="cd ~/dev/personal"


### Markdown Aliases ###

alias mdless="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | less"
alias mdcat="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | cat"
alias mdtail="pandoc -s -f markdown -t man \!* | groff -T utf8 -man | tail"

### Webstorm ###
alias webide="/Applications/WebStorm.app/Contents/MacOS/webide"

### XCode ###
function xcworkspace() {
   if [ -d "$1" ]
   then
      workspace_files=$(find $1 -maxdepth 1 -name "*.xcworkspace")
   else 
      workspace_files=$(find . -maxdepth 1 -name "*.xcworkspace")
   fi

   open $workspace_files
}

### eva ###
alias eva="node node_modules/eva"


### 
alias slc="sl ."


### CocoaPod
function clearPod() {
   #rm -rf "${HOME}/Library/Caches/CocoaPods"
   rm -rf "`pwd`/Pods/"
   rm Podfile.lock
}