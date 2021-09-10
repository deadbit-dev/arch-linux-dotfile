#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias python='python3'
alias vim='nvim'

if [ -z "$TMUX" ]; then
    tmux attach || tmux 
fi

eval  "$(starship init bash )" 
