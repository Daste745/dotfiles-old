#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi="vim"

alias wallpapers="cd ~/wallpapers"
alias downloads="cd ~/downloads"

# drops into fish if not execution string
# if [ -z "$BASH_EXECUTION_STRING" ]; then exec fish; fi
