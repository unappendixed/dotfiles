# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Install Antidote
source $HOME/.antidote/antidote.zsh
antidote load

# Completions

fpath=(~/.zsh/completions $fpath)

PROMPT='%2T %B%F{green}%1~%f%b '
autoload -Uz compinit
compinit
# End of lines added by compinstall
#
unsetopt nomatch

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M emacs "^[e" edit-command-line

# HISTORY SETUP
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

bindkey ^P history-search-backward
bindkey ^N history-search-forward

### ALIASES

alias explore="tree -C | less -R"
alias ls='ls --color'

. $HOME/.zsh_aliases

# Turso
export PATH="/home/unappendixed/.turso:$PATH"

export EDITOR="nvim"

# Leave this last for gods' sake
bindkey -e
bindkey ^P history-search-backward
bindkey ^N history-search-forward

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
