#!/usr/bin/env bash

sudo -E bash -c "yes | pacman -S autoconf automake pkg-config libevent"

cd $HOME/.toolkit/lib/tmux
sh autogen.sh
./configure && make
