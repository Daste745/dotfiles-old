# Environmental variables
export _JAVA_AWT_WM_NONREPARENTING=1
export BROWSER="firefox"
export TERMINAL="st"
export EDITOR="kak"
export LC_TIME="pl_PL.utf-8"
export LC_ALL="en_US.utf-8"

export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"
export GOPATH="$HOME/.local/share/go"

export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$GOPATH/bin:$HOME/Projects/flutter/sdk/bin:$ANDROID_HOME/platform-tools"

# Enable colors and set the prompt
autoload -U colors && colors
setopt PROMPT_SUBST
# PROMPT="%B%{$fg[red]%}%n%{$reset_color%}%B@%{$fg[blue]%}%M❯%{$fg[green]%}%3~❯%{$fg[orange]%}%{$reset_color%}%b "
# PROMPT="%{$fg[green]%}%4~ %{$fg[blue]%}❯%{$reset_color%}%b "
PROMPT="%{$fg[green]%}%~ %{$fg[blue]%}❯%{$reset_color%}%b "

# Auto/tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# History settings
HISTFILE=~/.cache/histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt histignorespace

# Emacs mode keys
bindkey -e

# Turn control+z into a toggle switch
ctrlz() {
  if [[ $#BUFFER == 0 ]]; then
    fg >/dev/null 2>&1 && zle redisplay
  else
    zle push-input
  fi
}
zle -N ctrlz
bindkey '^Z' ctrlz

# Quality-of-life aliases
alias _="sudo"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

alias ls="ls -h --color=yes"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

alias md="mkdir"
alias q="exit"
alias smi="sudo make install"
alias dots="git --git-dir ~/.dotfiles --work-tree ~"

# Takes a screenshot on a adb connected mobile device
alias adbscreen="adb shell screencap -p > screen.png"

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null

# Start X session if logged in on tty1
if [[ "$(tty)" == '/dev/tty1' ]]; then
  [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && startx
fi

