#! /usr/bin/env zsh

function clone_repo()
{
  url=$1
  dest=$2
  if [ -d "${dest}" ]; then
    echo "${url} already cloned"
  else
    git clone "${url}" "${dest}" --depth 1
  fi
}

# oh-my-zsh
clone_repo https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# syntax highlighting
clone_repo https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting

# autosuggestions
clone_repo https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# setup zsh config
ln -sf "$(pwd)/zshrc" ~/.zshrc
source ~/.zshrc


echo "done"
