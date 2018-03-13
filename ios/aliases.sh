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

alias xcproject="xcodeproj"

function xcodeproj() {
   if [ -d "$1" ]
   then
      workspace_files=$(find $1 -maxdepth 1 -name "*.xcodeproj")
   else
      workspace_files=$(find . -maxdepth 1 -name "*.xcodeproj")
   fi

   open $workspace_files
}

### eva ###
alias eva="node node_modules/eva"

### CocoaPod
function clearPod() {
   #rm -rf "${HOME}/Library/Caches/CocoaPods"
   rm -rf "`pwd`/Pods/"
   rm Podfile.lock
}
