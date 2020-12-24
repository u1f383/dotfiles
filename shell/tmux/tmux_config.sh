#!/bin/bash
apt -y install tmux
apt -y install powerline # font type
apt -y install fonts-powerline
apt -y install ttf-ancient-fonts
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # install tpm (Tmux Plugin Manager)
cp .tmux_conf ~/
# In tmux, prefix + I to install plugins
