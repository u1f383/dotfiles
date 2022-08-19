#!/bin/bash

set -e

############### BASIC ###############
sudo apt update
sudo apt install -yq vim \
                     python3 \
                     python3-pip \
                     file \
                     curl \
                     gcc \
                     gdb \
                     git \
                     ruby-dev \
                     fish \
                     glibc-source \
                     make \
                     gawk \
                     bison \
                     libseccomp-dev \
                     tmux \
                     wget \
                     locales
locale-gen en_US.UTF-8

############### PWN ###############

bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
pip3 install pwntools==4.4.0

sudo apt install -yq ruby-dev
sudo gem install -yq seccomp-tools \
                     one_gadget
ln -s /usr/local/lib/python3.8/dist-packages/bin/ROPgadget /bin/ROPgadget
cat config/.gdbinit >> ~/.gdbinit
cp gdb-cmd.py ~/

############### TMUX ###############

sudo apt -yq install tmux \
                     powerline \
                     fonts-powerline \
                     ttf-ancient-fonts
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # install tpm (Tmux Plugin Manager)
cp config/.tmux.conf ~/

############### VIM ###############

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp config/.vimrc ~/
pip3 install --user powerline-status
vim -E -s -u "$HOME/.vimrc" -i NONE -c "PlugInstall" -c "qa"

############### ZSH ###############

sudo apt -yq install zsh autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
mkdir -p $HOME/.oh-my-zsh/custom/themes/

cp config/bullet-train.zsh-theme $HOME/.oh-my-zsh/custom/themes/
cp config/.zshrc ~/.zshrc