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
export fireagent="\"User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0\""
function tlmgr {
 clear
 echo "~~~~~~~~~~~~~~~~~ Commands ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
 echo "              status   --   Current status of TeXLive installation"
 echo "           shortinfo * --   Print a one-liner description of CTAN packages"
 echo "                info * --   Print info on CTAN packages"
 echo "              update * --   Locally update CTAN packages"
 echo "             install * --   Locally install new CTAN packages"
 echo "          installdoc * --   Locally install documentation of CTAN packages"
 echo "          installsrc * --   Locally install sources of CTAN packages"
 echo "           listfiles * --   List all files in CTAN packages"
 echo "              search * --   Search info on CTAN packages"
 echo "         searchfiles * --   Search for files in CTAN packages"
 echo "             texhash   --   Refresh the TeX file database"
 echo "               clean   --   Clean local build tree"
 echo "                help   --   Print helpful information"
 echo "                quit   --   Quit tllocalmgr"
 tllocalmgr
}

MYVIMRC=/home/agha/.vimrc
i3blocks=/usr/lib/i3blocks/


alias startprinter="systemctl start org.cups.cupsd.service"
alias yt="mpsyt"


#location for weather
location=Benha


