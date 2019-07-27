export PATH="$PATH:$HOME/bin"
export DOTNET_CLI_TELEMETRY_OPTOUT="true"

# Set vi key bindings
# fish_hybrid_key_bindings

# Set the prompt
function fish_prompt
    echo -n (set_color red)"$USER@"(prompt_hostname)"❯"
    echo -n (set_color cyan)(prompt_pwd)"❯"
    echo -n (set_color red)(git branch 2> /dev/null | awk '{print $2}' | sed '/^\s*$/d')"❯"
    echo -n " "
end

#Env variables
export TERM="st"
export EDITOR="vim"

abbr _ "sudo"
abbr nuke "killall -9"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="lsd"
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
abbr git-dot "git --git-dir ~/.dotfiles --work-tree ~"
alias gpuwatch="python3.7 -m gpustat -i -c"

abbr bin "cd ~/bin"
abbr dev "cd ~/dev"
abbr doc "cd ~/doc"
abbr dot "cd ~/dot"
abbr dwn "cd ~/dwn"
abbr img "cd ~/img"
abbr snd "cd ~/snd"
abbr tmp "cd ~/tmp"
abbr vid "cd ~/vid"
abbr src "cd ~/src"
abbr msc "cd ~/msc"
abbr games "cd ~/.games"

abbr osudir "cd ~/.local/share/wineprefixes/osu/drive_c/users/stefan/Local\ Settings/Application\ Data/osu!/"
