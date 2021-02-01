#!/bin/bash

sudo apt install -yq gcc
sudo apt install -yq gdb

## pwndbg
git clone https://github.com/pwndbg/pwndbg ~/pwndbg
cd ~/pwndbg
./setup.sh

## pwntools
pip3 install pwntools

## seccomp tools
sudo apt install -yq ruby-dev
sudo gem install seccomp-tools
sudo gem install one_gadget

## pwngdb
cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git
echo ~/Pwngdb/.gdbinit >>  ~/.gdbinit

## libc version
git clone git@github.com:matrix1001/glibc-all-in-one.git ~/glibc-all-in-one
