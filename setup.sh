#!/bin/sh

sudo apt update && sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended



# Setup kubectx
git clone https://github.com/ahmetb/kubectx ~/kubectx
mkdir -p ~/bin
ln -s ~/kubectx/kubectx ~/bin/kubectx
ln -s ~/kubectx/kubens ~/bin/kubens

mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions
ln -s ~/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -s ~/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh

