# Paginated list
alias lsp="ls -ahC --color=always | less -R"

# Shortcut for 'cd'
alias ..="cd .."

# Uses dmenu to show directories to 'cd' to
alias up='cd "$(ls -d */ | dmenu -fn "Monospace-14:normal" -nb "#100" -nf "#b9c0af" -sb "#000" -sf "#afff2f" -i)"'

# Always use color output for `ls`
#alias ls="command ls ${colorflag}"
#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Udate and upgrade software with pacman
alias update="sh ~/.scripts/update_upgrade_packages.sh"
# colorized pacman output with pacs alias:
alias pacs="pacsearch"
pacsearch() {
    echo -e "$(pacman -Ss "$@" | sed \
	-e 's#^core/.*#\\033[1;31m&\\033[0;37m#g' \
	-e 's#^extra/.*#\\033[0;32m&\\033[0;37m#g' \
	-e 's#^community/.*#\\033[1;35m&\\033[0;37m#g' \
	-e 's#^.*/.* [0-9].*#\\033[0;36m&\\033[0;37m#g' ) \
	\033[0m"
}
# IP addresses
alias external-ip="notify-send -u normal -a EXTERNAL-IP `curl -s ifconfig.me/ip`&"
alias local-ip="notify-send -u normal -a LOCAL-IP `ip addr | grep 192 | awk '{print $2}'` &"
alias list-local-ips="nmap -sP 192.168.1.* | grep 192  | awk '{print \$5}'"

alias grep="grep -n --color=auto $@"
alias ls='ls --color=auto'
alias install="sudo powerpill -S "

alias gitpush="git push; notify-send -u normal -a GIT 'pushed to upstream'"

# Uses dmenu to connect to a machine on the local network
alias sshroot='ssh root@"$(list-local-ips | dmenu -l 4 -i -fn Roboto:regular-10)" &' 

# ssh my raspberry pi
alias raspi="ssh pi@raspberry.local"
