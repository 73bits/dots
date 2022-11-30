# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;1;91m\][\[\e[0;1;38;5;159m\]\u\[\e[0;1;91m\]@\[\e[0;1;38;5;154m\]\H \[\e[0;1;38;5;129m\]\W \[\e[0;1;91m\]] \[\e[0;1;97m\]\$ \[\e[0m\]'

HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%d-%m %T "
HISTIGNORE="ls:ls -l:lt:pwd:clear :.."

shopt -s autocd
shopt -s histappend
shopt -s checkwinsize

alias ls='ls --group-directories-first --color=always'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias du='du -ch'
alias ip='ip -c'
alias shred='shred -vzn3'
alias grep='grep --color=auto'
alias sxiv='sxiv -b -g 1366x768'
alias yt-dlp='yt-dlp --no-cache-dir --no-part'
alias config="/usr/bin/git --git-dir=${HOME}/.dots/ --work-tree=${HOME}"

SILENT_JAVA_OPTIONS="$JDK_JAVA_OPTIONS"
unset JDK_JAVA_OPTIONS
alias java='java ${SILENT_JAVA_OPTIONS}'
