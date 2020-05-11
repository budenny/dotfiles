#! /usr/bin/env zsh

# oh-my-zsh
OH_MY_ZSH_DIR=~/.oh-my-zsh
if [ -d "${OH_MY_ZSH_DIR}" ]; then
  echo "oh-my-zsh found"
else
  echo "oh-my-zsh not found, install..."
  git clone https://github.com/robbyrussell/oh-my-zsh.git "${OH_MY_ZSH_DIR}"
fi


# syntax highlighting
SYNTAX_PLUGIN_DIR=~/.zsh-syntax-highlighting
if ! [ -d "${SYNTAX_PLUGIN_DIR}" ]; then
  echo "syntax highlighting not found, install..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${SYNTAX_PLUGIN_DIR}" --depth 1 
fi


# autosuggestions
AUTOSUGGESTIONS_PLUGIN_DIR=~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
if  [ -d "${AUTOSUGGESTIONS_PLUGIN_DIR}" ]; then
  echo "autosuggestions found"
else
  echo "syntax highlighting not found, install..."
  git clone https://github.com/zsh-users/zsh-autosuggestions "${AUTOSUGGESTIONS_PLUGIN_DIR}"
fi


# setup zsh config
ln -sf "$(pwd)/zshrc" ~/.zshrc
source ~/.zshrc


echo "done"
