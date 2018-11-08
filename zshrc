# ~.zshrc
# This must go first
# uncomment to allways open tmux when launching terminal in default session
#if [ -z "$TMUX" ]; then
#   tmux attach -t default || tmux new -s default
#fi
#
# uncomment to always open when launching terminal in new sessions
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
#
# exec /home/david/scripts/background.sh &
# SSH Agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi
export PATH=/home/david/scripts:$PATH
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt appendhistory beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#
#
export PS1="%n@%d %% "
#
# Yo- use .shell.aliaes
if [ -e ~/.aliasrc ]; then
   source ~/.aliasrc
fi

# defaults
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim
