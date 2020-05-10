#!/bin/sh

ln -sf ~/mrispin/env/home/.zshrc ~/.zshrc
sudo apt update && sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended



# Setup kubectx
git clone https://github.com/ahmetb/kubectx ~/kubectx
mkdir -p ~/bin
ln -sf ~/kubectx/kubectx ~/bin/kubectx
ln -sf ~/kubectx/kubens ~/bin/kubens

mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions
ln -sf ~/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -sf ~/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh

# Install z
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
