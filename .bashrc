# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Put your fun stuff here.
set -o vi
shopt -s autocd
bind
     :clear-screen

alias vi='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# startx if on matching VT
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec startx
fi

# Created by `pipx` on 2024-06-18 08:51:28
export PATH="$PATH:/home/gathwala/.local/bin"
