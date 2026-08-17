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

alias aprl='sudo systemctl start prl'
alias oprl='sudo systemctl stop prl'
alias sprl='sudo systemctl status prl'
alias prll='cd /var/log/prl/; ll -rt'
alias prlrmlog='rm  /var/log/coredumps/*; rm -rf /var/log/prl/*; rm -rf /var/log/prl/.*; mkdir /var/log/prl/postbus; mkdir /var/log/prl/atf'
alias cprl='rm -rf /var/log/prl/*.*; mkdir /var/log/prl/postbus; mkdir /var/log/prl/atf'
pllog () { cat "$(ls -1drt /var/log/prl/*$@_2* | tail -n1)"; }
alias rprl='oprl; prlrmlog; aprl'
alias etis='bash /home/prl/bin/etis.sh'
alias astris='bash /home/prl/bin/astris.sh'
alias mouseLocatie='export DISPLAY\=localhost:0.2 && watch -t -n 0.0001 xdotool getmouselocation'
alias schermweg='/opt/prl/bin/stuur $VPT24X_LO_SBR,T'
alias prlupdaten='bash /home/prl/bin/update_prl.sh'

alias luprl="$SBS_STUUR $VPT24X_LO_SBR,00U"
liprl() { [ -z "$1" ] && echo "Syntax: liprl <functie>" >&2 || $SBS_STUUR "$VPT24X_LO_SBR,00IRobot-tester##$1" ; }
alias lioost="liprl \"RF TTS Oost\""
alias liwest="liprl \"RF TTS West\""
alias liertms="liprl \"RF TTS ERTMS\""

alias vim=nvim

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '

export EDITOR=nvim

source $HOME/dotfiles/bash_completion_tmux.sh

eval `dircolors $HOME/dotfiles/.dircolors`
source /opt/prl/scripts/vptprl_app_config.sh
# BEGIN PRL qpid en oracle environment
source /opt/qpid-itr/enable
source /opt/prl/scripts/prl_oracle_env.sh
# END PRL qpid en oracle environment
