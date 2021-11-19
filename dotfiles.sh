#!/bin/sh
git clone --bare --recursive https://github.com/AreYouConfused/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME pull
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME submodule update
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local status.showUntrackedFiles no
