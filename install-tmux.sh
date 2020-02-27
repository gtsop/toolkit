#!/usr/bin/env bash

sudo -E bash -c "pacman -S --noconfirm base-devel autoconf automake pkg-config libevent"

cd $HOME/.toolkit/lib/tmux
sh autogen.sh
./configure && make
