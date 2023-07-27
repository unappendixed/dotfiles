#

# Lines configured by zsh-newuser-install
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brad/.zshrc'

export MOZ_ENABLE_MOZ=1

export XDG_CONFIG_HOME='/home/brad/.config/'

export logseq='/home/brad/Documents/logseq-graphs/'

PROMPT='%T %B%F{green}%1~%f%b $ '
autoload -Uz compinit
compinit
# End of lines added by compinstall
#
unsetopt nomatch


export NVM_DIR="$HOME/.config//nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias config='/usr/bin/git --git-dir=/home/brad/.cfg/ --work-tree=/home/brad'
