#Env variables
export GOROOT="$HOME/dev/go"
export TERM="st"
export EDITOR="vim"
export DOTNET_CLI_TELEMETRY_OPTOUT="true"
export PATH="$PATH:$HOME/bin:$GOROOT/bin"

# Set vi-hybrid (combined vi with C-x binds) key bindings
# fish_hybrid_key_bindings

# Set the prompt
function fish_prompt
    echo -n (set_color red)"$USER@"(prompt_hostname)"❯"
    echo -n (set_color cyan)(prompt_pwd)"❯"
    echo -n (set_color red)(git branch 2> /dev/null | awk '{print $2}' | sed '/^\s*$/d')"❯"
    echo -n " "
end

# Common quality of life aliases
abbr _ "sudo"
alias please="sudo"
alias pls="sudo"
abbr nuke "killall -9"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Aliases for frequently used programs and scripts
alias termbin="nc termbin.com 9999"
alias ls="lsd"
alias dotfiles="git --git-dir ~/.dotfiles --work-tree ~"
abbr md "mkdir"
abbr vi "$EDITOR"
abbr svi "sudo $EDITOR"
abbr r "ranger"
abbr ss "sudo pacman -S"
abbr sr "sudo pacman -Rsn"
abbr syu "sudo pacman -Syu"
abbr clip "xclip -selection clipboard"
abbr vps "ssh predator@51.68.142.188"
abbr ytdwn "youtube-dl -x --embed-thumbnail --audio-quality 6 --audio-format mp3"
abbr record "ffmpeg -f x11grab -s 1440x900 -i :0.0 -r 30 -vcodec libx264 recording.mkv"

# Shorthand abbreviantions for commonly used directories
abbr bin "cd ~/bin"
abbr dev "cd ~/dev"
abbr doc "cd ~/doc"
abbr dot "cd ~/dot"
abbr dwn "cd ~/dwn"
abbr img "cd ~/img"
abbr msc "cd ~/msc"
abbr snd "cd ~/snd"
abbr src "cd ~/src"
abbr phn "cd ~/phn"
abbr tmp "cd ~/tmp"
abbr vid "cd ~/vid"
alias osudir="cd ~/.local/share/wineprefixes/osu/drive_c/users/stefan/Local\ Settings/Application\ Data/osu!/"
