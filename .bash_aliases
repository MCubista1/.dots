alias fetch='screenfetch -w -c ",7;2"'
alias gfetch='onefetch'
alias nfetch='neofetch'
alias pmoon='watch -t -n1800 pyphoon -x -n 19'
alias cmatrix='cmatrix -ab'

alias speed="speedtest-cli --simple"
alias t="tput reset && clear"
alias e="exit"
alias x="xonsh"

alias h="cd ~"
alias bindir="cd ~/.local/bin"

alias up="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias va="vim ~/.bash_aliases"
alias vb="vim ~/.bashrc"
alias rb=". ~/.bashrc"

mkcd() {
    mkdir -p "$1" && cd "$1";
}

alias bat="batcat"
alias cx="chmod +x"

# fff auto cd on quit
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias d='git --git-dir=$HOME/.dots/ --work-tree=$HOME'
