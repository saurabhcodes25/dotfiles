#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#pfetch
#colorscript random
#fortune -s | cowsay | lolcat 

alias mydotfiles='/usr/bin/git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'

#powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
alias mysql='sudo mysql -u root'
alias wireload='sudo nmcli connection reload'
alias nv='nvim'
eval "$(starship init bash)"
alias pirokit='~/.config/pirokit/pirokit'


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
alias caa='./caa'
alias icat="kitty +kitten icat"
alias mongo='mongosh'
alias sophos="./caa"
#cmatrix

# Created by `pipx` on 2022-07-10 05:56:24
export PATH="$PATH:/home/arch/.local/bin"





