# setup shell file


function load_file() {
  if [[ -f "$BASH_CONFIGS_DIR/$1" ]]; then
   	source "$BASH_CONFIGS_DIR/$1"
  fi
}

if [ -n $ZSH_NAME ]; then
	echo 'export BASH_CONFIGS_DIR="/Users/sangpark/dev/personal/bash-configs"' >> ~/.zshrc

	echo '. $BASH_CONFIGS_DIR/initialize.sh' >> ~/.zshrc
fi

load_file git/firsttime.sh