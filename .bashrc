#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

pfetch
#colorscript random
#fortune -s | cowsay | lolcat 

alias mydotfiles='/usr/bin/git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'

#export PATH="/home/arch/miniconda3/bin:$PATH"

#powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
alias mysql='sudo mysql -u root'
