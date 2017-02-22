#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

gem install tmuxinator

ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/ssh_config $HOME/.ssh/config
