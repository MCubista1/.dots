alias t='tput clear && clear'
alias a='tmux a'
alias s='watch -n 1 -t "sensors -A && /opt/vc/bin/vcgencmd get_throttled"'
alias up='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias nr='sudo needrestart -q -r a'
alias fetch='screenfetch -p -c ",7;2"'
alias cmatrix='cmatrix -ab'
alias rb='. ~/.bashrc'
alias h='cd ~'
alias fx='cd ~/fx'
alias va='vim ~/.bash_aliases'
alias vb='vim ~/.bashrc'
alias rb='. ~/.bashrc'
alias vg='vim ~/.gitconfig'
alias vv='vim ~/.0.vimrc'
alias speed='speedtest'
alias reboot='sudo reboot'
alias fx='cd fx'
alias g='git'
alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias d='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias e='exit'
alias github='eval "$(ssh-agent -s)" && ssh-add .ssh/github'
alias ls='ls -a --color'
alias cx='chmod +x'
alias lls='du -ah -d 1 | sort -hr'
alias fxcm='python3 ~/test.py'

# create and move to directory
mkcd() {
    mkdir -p "$1" && cd "$1";
}

# fff auto cd on quit
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

