
# Lines configured by zsh-newuser-install
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

export MOZ_ENABLE_MOZ=1

export XDG_CONFIG_HOME=$HOME/.config/

export logseq=$HOME/Documents/logseq-graphs/

# Make swaymsg work from inside tty
# not working for some reason
#export SWAYSOCK=$(find /run/user/$(id -u)/ -maxdepth 2 -name sway-ipc.* | head -1)

alias ls='ls --color'
PROMPT='%2T %B%F{green}%1~%f%b $ '
autoload -Uz compinit
compinit
# End of lines added by compinstall
#
unsetopt nomatch


export NVM_DIR="$HOME/.config//nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
