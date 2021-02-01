#!/bin/bash
sudo apt -y install zsh # install zsh first
sudo apt -y install autojump
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # install oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # install autosuggestions
chsh -s $(which zsh) # change default shell
mkdir -p $HOME/.oh-my-zsh/custom/themes/
cp bullet-train.zsh-theme $HOME/.oh-my-zsh/custom/themes/
cp .zshrc ~/.zshrc
### OTHERS
# cat /etc/shells : show all shell can use
# echo $0 / echo $SHELL : show shell current used
