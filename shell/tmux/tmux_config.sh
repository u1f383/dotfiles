#!/bin/bash
sudo apt -y install tmux
sudo apt -y install powerline # font type
sudo apt -y install fonts-powerline
sudo apt -y install ttf-ancient-fonts
git clone git@github.com:gpakosz/.tmux.git ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # install tpm (Tmux Plugin Manager)
cp .tmux.conf ~/
# In tmux, prefix + I to install plugins
