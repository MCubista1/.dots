alias fetch="screenfetch -w -c ',7;2'"
alias gfetch="onefetch"
alias nfetch="neofetch"
alias cmatrix="cmatrix -ab"
alias btop="bpytop"
alias fxcm="python3 ~/tst_fxcm.py"
alias plot="python3 ~/acs/plot.py | grep '|*.|' | cut -d '|' -f2"
alias logs="vim ~/acs/.log_acs"
alias pos="python3 ~/tst/pos.py"

alias ls="ls -A --color"
alias ll="ls -lAh --color"
alias lls="du -ah -d 1 | sort -hr"
alias week="date +%U"

alias t="tput reset && clear"
alias e="exit"
alias x="xonsh"
alias cx="chmod +x"

alias h="cd ~"
alias bindir="cd ~/.local/bin"
alias media="cd /media/usb"
alias acs="cd ~/acs"
alias pydir="cd ~/.local/lib/python3.8/site-packages"

alias va="vim ~/.bash_aliases"
alias vb="vim ~/.bashrc"
alias rb=". ~/.bashrc"
alias vg="vim ~/.gitconfig"
alias vu="vim ~/Documentos/Ubuntu/Ubuntu"
alias vc="vim ~/Documentos/Ubuntu/colors"
alias vv="vim ~/.0.vimrc"

alias g="git"
alias dots="git --git-dir=$HOME/.dots/ --work-tree=$HOME"
alias d="git --git-dir=$HOME/.dots/ --work-tree=$HOME"
alias github='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/github'

alias up="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

alias poweroff="sudo poweroff"
#alias poweroff="echo rebooting... && sudo reboot"
alias reboot="sudo reboot"

alias vint="vim ~/.local/bin/internet_status"
alias vtst="vim ~/.local/bin/tst"

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
