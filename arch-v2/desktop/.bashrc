#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -1 --color=auto'
#PS1='\u@\h:\w\$ '

PS1="\[$(tput setaf 208)\]\u";
PS1+="\[$(tput setaf 255)\]@";
PS1+="\[$(tput setaf 39)\]\h";
PS1+="\[$(tput setaf 255)\]:\w$ ";
. "$HOME/.cargo/env"
