#!/bin/bash

OLDPWD="$(pwd -P)"
DOTFILES="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $DOTFILES
git submodule init
git submodule update

# nerd fonts
ln -s $DOTFILES/fonts $HOME/.fonts

# tmux
for cfg in $(ls $DOTFILES/tmux)
do
 ln -s $DOFILES/tmux/$file $HOME/.$file
done

# vim
mkdir $HOME/.vim
ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
ln -s $DOTFILES/vim/autoload $HOME/.vim/autoload
ln -s $DOTFILES/vim/bundle $HOME/.vim/bundle

# omz
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc
ln -s $DOTFILES/zsh/p10k.zsh $HOME/.p10k.zsh
ln -s $DOTFILES/zsh/ohmyzsh $HOME/.ohmyzsh
ln -s $DOTFILES/zsh/powerlevel10k $HOME/.ohmyzsh/custom/themes/powerlevel10k

cd $OLDPWD
