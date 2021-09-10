#!/bin/sh

export EDITOR="vim"

if command -v urxvt &> /dev/null; then
  export TERMINAL="Alacritty"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_X11_HOME="$XDG_CONFIG_HOME/X11"
export XINITRC="$XDG_X11_HOME/.xinitrc"
export XAUTHORITY="$XDG_X11_HOME/.Xauthority"

# startx at login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx ~/.config/X11/.xinitrc
fi

# run bashrc
if [[ -f ~/.bashrc ]] ; then
  . ~/.bashrc
fi
