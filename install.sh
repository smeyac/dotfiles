#!/bin/bash

TILDE="~"
DOTFILES="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
DOTFILES="${DOTFILES/${HOME}/$TILDE}"

if [[ -d $HOME/.config ]]; then
  mkdir -p $HOME/.config/pipewire
fi

for app in alacritty i3 picom polybar rofi
do
  ln -s $DOTFILES/$app $HOME/.config/.$app
done

ln -s $DOTFILES/pipewire/t450/media-session.d $HOME/.config/pipewire/media-session.d

ln -s $DOTFILES/fonts $HOME/.fonts

for cfg in $(ls $DOTFILES/tmux)
do
 ln -s $DOFILES/tmux/$file $HOME/.$file
done

mkdir $HOME/.vim
ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
ln -s $DOTFILES/vim/autoload $HOME/.vim/autoload
ln -s $DOTFILES/vim/bundle $HOME/.vim/bundle

ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc
ln -s $DOTFILES/zsh/p10k.zsh $HOME/.p10k.zsh
ln -s $DOTFILES/zsh/ohmyzsh $HOME/.ohmyzsh
ln -s $DOTFILES/zsh/powerlevel10k $HOME/.ohmyzsh/custom/themes/powerlevel10k
