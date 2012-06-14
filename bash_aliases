# ~/.bash_aliases: apparantly, executed by bash(1) for non-login shells.
# /usr/share/doc/bash/examples/startup-files
# contain examples

alias emacs='emacs -nw'
alias vnc='x11vnc -localhost -display :0 -q -q -q -clear_keys -clear_mods -repeat &'

alias ..="cd .." #go to parent dir
alias ...="cd ../.." #go to grandparent dir
alias -- -="cd -" #go to previous dir
alias l.='ls -d .*' #list hidden files
alias ll='ls -lhvrt' #extra info compared to "l"
alias lld='ls -lUd */' #list directories
md () { mkdir -p "$1" && cd "$1"; } #go to a new dir
digitalrain() { tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"; }
greywave() { yes "$(seq 232 255;seq 254 -1 233)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .01; done ; }

