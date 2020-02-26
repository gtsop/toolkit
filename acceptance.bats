#!/usr/bin/env bats

@test "bats library exists" {
  which bats
}
@test "vim editor exists" {
  which vim
}
@test "tmux software exists" {
  which tmux
}
@test "stub.sh software exists" {
  which stub.sh
}
@test "~/.bashrc file points to .bashrc in sub-module" {
  BASHRC_PATH=$(readlink -f $HOME/.bashrc)
    [ "$BASHRC_PATH" == "$HOME/.toolkit/dotfiles/dotfiles-bashrc/.bashrc" ]
}
@test "~/.vimrc file points to .vimrc in sub-module" {
  VIMRC_PATH=$(readlink -f $HOME/.vimrc)
    [ "$VIMRC_PATH" == "$HOME/.toolkit/dotfiles/dotfiles-vimrc/.vimrc" ]
}

@test "~/.vim/ directory points to .vim/ in sub-module" {
  VIM_PATH=$(readlink -f $HOME/.vim/)
    [ "$VIM_PATH" == "$HOME/.toolkit/dotfiles/dotfiles-vimrc/.vim" ]
}
