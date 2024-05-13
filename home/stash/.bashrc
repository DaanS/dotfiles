# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source scl_source enable devtoolset-7
export X_SCLS="`scl enable devtoolset-7 'echo $X_SCLS'`"
source scl_source enable rh-git29
source scl_source enable rh-python36

alias vim=nvim

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '

export EDITOR=nvim

source $HOME/dotfiles/bash_completion_tmux.sh

eval `dircolors $HOME/dotfiles/.dircolors`

if [ -d "$HOME/usr/bin" ] ; then
    PATH="$HOME/usr/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "/opt/clang-9/bin" ] ; then
    PATH="/opt/clang-9/bin:$PATH"
fi
# BEGIN ANSIBLE MANAGED BLOCK
export PATH=/opt/rh/rh-python34/root/usr/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/opt/rh/rh-python34/root/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export MANPATH=/opt/rh/rh-python34/root/usr/share/man:${MANPATH}
# For systemtap
export XDG_DATA_DIRS=/opt/rh/rh-python34/root/usr/share${XDG_DATA_DIRS:+:${XDG_DATA_DIRS}}
# For pkg-config
export PKG_CONFIG_PATH=/opt/rh/rh-python34/root/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}
# END ANSIBLE MANAGED BLOCK
# BEGIN PRL Aliasses
alias qdstat='python2 /bin/qdstat'
alias qdmanage='python2 /bin/qdmanage'
# END PRL Aliasses
# BEGIN PRL Aliases
source /opt/qpid-itr/enable
source /opt/prl/scripts/prl_oracle_env.sh
alias qdstat='python2 /opt/qpid-itr/bin/qdstat'
alias qdmanage='python2 /opt/qpid-itr/bin/qdmanage'
# END PRL Aliases
source /opt/qpid-itr/enable
source /opt/prl/scripts/vptprl_app_config.sh
