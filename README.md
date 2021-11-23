How to: 

```
git clone --bare --recursive https://github.com/AreYouConfused/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

config pull
config submodule update
config config --local status.showUntrackedFiles no
```

you may need to run a rest to over write your current files

`config reset --hard`
