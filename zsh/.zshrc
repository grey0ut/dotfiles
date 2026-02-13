# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/grislobo/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall

# adding zoxide support
eval "$(zoxide init zsh)"

# Aliases
alias vim='nvim'
alias ll='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C'
alias lg='lazygit'
alias ff='fastfetch'

export PROMPT='%~ %# '
export EDITOR=/usr/bin/nvim
export GIT_ASKPASS=/usr/bin/ksshaskpass
export PATH=$PATH:"$HOME/.local/bin"
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"
if [ $XDG_SESSION_TYPE = "tty" ]; then
        echo "suppressing starship on tty"
else
	eval "$(starship init zsh)"
fi
  
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# bitwarden ssh-agent
export SSH_AUTH_SOCK=/home/$USER/.bitwarden.ssh-agent.sock

# key bindings

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

# enable syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

eval $(ssh-agent -s) > /dev/null
