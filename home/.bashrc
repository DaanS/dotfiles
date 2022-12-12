# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim=nvim
alias ls='ls --color=auto'

export GIT_ASKPASS='/usr/bin/ksshaskpass'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '

eval `dircolors $HOME/dotfiles/.dircolors`

export SPIN_LOGGING=~/Logging
. "$HOME/.cargo/env"
