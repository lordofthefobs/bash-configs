## Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_HOME/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_HOME/opt/nvm/nvm.sh"  # This loads nvm
[ -s "$HOMEBREW_HOME/opt/nvm/etc/bash_completion" ] && \. "$HOMEBREW_HOME/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# automaticall run `nvm use` when switching directory
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


alias nr="npm run"
alias nrt="npm run test"
alias nrtu="npm run test:unit"