#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export SCRIPTS=/home/agha/.scripts
PS1='[\u@\h \W]\$ '
export LOOPATH=$HOME/.locale
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR=vim
export TERMINAL=st
export PKG_CONFIG_PATH=/home/agha/pckgs/
export MYBASHRC=~/.bashrc
export XDG_CONFIG_HOME=$HOME/.config/
export srcdir=/usr/share

MYVIMRC=/home/agha/.vimrc


alias startprinter="systemctl start org.cups.cupsd.service"
alias yt="mpsyt"


#location for weather
location=Benha


