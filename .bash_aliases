alias fetch='screenfetch -w -c ",7;2"'
alias gfetch='onefetch'
alias nfetch='neofetch'
alias fortune='fortune | figlet -f smblock | lolcat'
alias pmoon='watch -t -n1800 pyphoon -x -n 19'
alias cmatrix='cmatrix -ab'

alias mc=". /usr/share/mc/bin/mc-wrapper.sh -s -S otro ~"
alias speed="speedtest-cli --simple"
alias suspend="systemctl suspend"
alias sensor="watch -n 1 -t sensors -A"
alias t="tput reset && clear"
alias e="exit"

alias p="ssh pi"
alias sshfs_pi="sshfs pi:./fx ~/Documentos/fx/midas/pi_ssh"
alias sshfs_tor="sshfs tor:./test ~/Documentos/fx/midas/pi_ssh"
alias umount_pi="umount ~/Documentos/fx/midas/pi_ssh"
alias umount_tor="umount ~/Documentos/fx/midas/pi_ssh"
alias serve="nohup npx serve /home/ed/Documentos/fx/midas/midas_data &>/dev/null &"

alias spicetify="/home/ed/spicetify-cli/spicetify"
alias flush="sudo systemd-resolve --flush-caches"

alias h="cd ~"
alias vid="cd ~/Vídeos"
alias gitdir="cd ~/Documentos/git"
alias usb="cd /media/ed"
alias pi-ssh="cd ~/Documentos/fx/midas/pi_ssh"
alias mgit="cd ~/Documentos/mgit"
alias bindir="cd ~/.local/bin"
alias ima="cd ~/Imágenes"

alias up="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias nr="sudo needrestart -q -r a"
alias va="vim ~/.bash_aliases"
alias vb="vim ~/.bashrc"
alias rb=". /home/ed/.bashrc"

alias devil="nohup devilspie &>/dev/null &"
alias kdevil='kill "$(pidof devilspie)"'

alias beep="paplay $BEEP1"
alias bee="paplay $BEEP2"
alias be="paplay $BEEP3"
alias bebop="paplay $BEEP3; paplay $BEEP2; paplay $BEEP1"

mkcd() {
    mkdir -p "$1" && cd "$1";
}

alias xbox="sudo xboxdrv --silent"
alias clip="xclip -sel clip"
alias bat="batcat"

alias s='tt -words ox5000 -n 100 -t 300 -nobackspace -noskip -showwpm -w 80 -theme vscode -csv >> ~/.tt/wpm.csv'
alias k='pkill -9 -f "/bin/sh"'

# fff auto cd on quit
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

alias dots='git --git-dir=$HOME/.dots/ --work-tree=$HOME'