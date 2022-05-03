alias fetch='screenfetch -w -c ",7;2"'
alias gfetch='onefetch'
alias nfetch='neofetch'
alias cmatrix='cmatrix -ab'
alias fxcm='python3 test_fxcm.py'

alias ls="ls -A --color"
alias ll="ls -lAh --color"
alias lls="du -ah -d 1 | sort -hr"

alias t="tput reset && clear"
alias e="exit"
alias x="xonsh"
alias cx="chmod +x"

alias h="cd ~"
alias bindir="cd ~/.local/bin"
alias media="cd /media/usb"

alias va="vim ~/.bash_aliases"
alias vb="vim ~/.bashrc"
alias rb=". ~/.bashrc"
alias vg="vim ~/.gitconfig"
alias vu="vim ~/Documentos/Ubuntu/Ubuntu"
alias vc="vim ~/Documentos/Ubuntu/colors"
alias vv="vim ~/.0.vimrc"

alias g="git"
alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias d='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias github='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/github'

alias up="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

alias poweroff='sudo poweroff'
alias reboot='sudo reboot'

alias vint='vim ~/.local/bin/internet_status'
alias vtst='vim ~/.local/bin/tst'

mkcd() {
    mkdir -p "$1" && cd "$1";
}

mc() {
    mkdir -p "$1" && cd "$1";
}

# fff auto cd on quit
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}
