source `brew --prefix`/etc/bash_completion.d/npm
source `brew --prefix`/etc/bash_completion.d/git-completion.bash
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -h'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias swins2trax='osascript ~/.bin/swins2trax.applescript'
alias su='sudo su -l'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
rm() { mv -f "$@" ~/.Trash; }
branch() { git branch 2>/dev/null| sed -e '/^[^*]/d' -e 's/* \(.*\)/ @\1/'; }
music() { music.sh ${@:-/Volumes/space/music}; }
eject() { diskutil eject $@; }
wavify() { ffmpeg -i "$1" "${1%.*}".wav; }
repeat() { cd ~/Programming/repeat-editor; npm start; }
EDITOR="vim"
PATH="/Applications/SuperCollider/SuperCollider.app/Contents/MacOS/:$PATH:$HOME/.bin:."
PS1='\w\[\e[1;34m\]$(branch)\[\e[m\] \$ '
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
