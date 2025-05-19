# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source scl_source enable gcc-toolset-10
export X_SCLS="`scl enable gcc-toolset-10 'echo $X_SCLS'`"
source /opt/qpid-itr/enable

alias vim=nvim

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '

export EDITOR=nvim

source $HOME/dotfiles/bash_completion_tmux.sh

eval `dircolors $HOME/dotfiles/.dircolors`
source /opt/prl/scripts/vptprl_app_config.sh

pllog () { cat "$(ls -1drt /var/log/prl/*$@_2* | tail -n1)"; }
