export PATH="$PATH:$HOME/bin"

# Set vi key bindings
fish_hybrid_key_bindings

# Set the prompt
function fish_prompt
    echo -n (set_color red)"$USER@"(prompt_hostname)"❯"
    echo -n (set_color cyan)(prompt_pwd)"❯"
    echo -n (set_color red)(git branch 2> /dev/null | awk '{print $2}')"❯"
    echo -n " "
end

#Env variables
export TERM="st"
export BROWSER="vivaldi-snapshot"
export EDITOR="vim"

abbr _ "sudo"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="lsd"
abbr md "mkdir"
abbr vi "$EDITOR"
abbr svi "sudo $EDITOR"
abbr r "ranger"
abbr calc "python -q"
abbr ss "sudo pacman -S"
abbr sr "sudo pacman -Rs"
abbr syu "sudo pacman -Syu"
abbr clip "xclip -selection clipboard"
abbr ytdwn "youtube-dl -x --embed-thumbnail --audio-quality 6 --audio-format mp3"
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
abbr games "cd ~/.games"

abbr osudir "cd ~/.local/share/wineprefixes/osu/drive_c/users/stefan/Local\ Settings/Application\ Data/osu!/"
