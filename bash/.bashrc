#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=2000
# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

alias vim='nvim'
alias ll='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# cd into the old directory
alias bd='cd "$OLDPWD"'
# launch cmus and cavalier for terminal music playing
alias music='nohup konsole -e cmus &>/dev/null & /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/org.nickvision.cavalier org.nickvision.cavalier &>/dev/null &'
#PS1='[\u@\h \W]\$ '
#PS1='[\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]]\W\$ '
PS1='[\[\033[01;34m\]\u\[\033[00m\]@\[\033[01;31m\]\h\[\033[00m\]]\[\033[44m\]\W\[\033[00m\]\$ '

export PATH=$PATH:"$HOME/.local/bin"
if [ $XDG_SESSION_TYPE = "tty" ]; then
        echo "suppressing starship on tty"
else
	eval "$(starship init bash)"
fi
