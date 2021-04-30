# setup shell file

if [ -n $ZSH_NAME ]; then
	echo "setting up ZSH"
	echo 'export BASH_CONFIGS_DIR="/Users/sangpark/dev/personal/bash-configs"' >> ~/.zshrc

	echo '. $BASH_CONFIGS_DIR/initialize.sh' >> ~/.zshrc
fi