#!/bin/sh

# install packages
sudo pacman -Syyu xmonad xmonad-contrib xterm xmobar dmenu neovim pynvim feh tmux base-devel git xorg-font-util  xdotool trayer network-manager-applet
npm i -g pyright

#make xmobar directory
mkdir .config/xmobar

# copy configs
cp $HOME/Documents/dotfiles/.xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs
cp $HOME/Documents/dotfiles/.config/xmobar/.xmobarrc $HOME/.config/xmobar/.xmobarrc
cp $HOME/Documents/dotfile/.config/nvim/ $HOME/.config/nvim/
cp $HOME/Documents/dotfiles/.tmux.conf $HOME/.tmux.conf

echo "Xmessage*font: -*-dejavu sans mono-medium-r-normal--*-80-*-*-*-*-iso10646-1" > ~/.Xresources

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

