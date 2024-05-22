# Lines configured by zsh-newuser-install
unsetopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Completions

fpath=(~/.zsh/completions $fpath)

PROMPT='%2T %B%F{green}%1~%f%b '
autoload -Uz compinit
compinit
# End of lines added by compinstall
#
unsetopt nomatch


# HISTORY SETUP
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

bindkey ^P history-search-backward
bindkey ^N history-search-forward

# make it pretty

autoload -Uz add-zsh-hook vcs_info
autoload -U colors && colors

setopt prompt_subst
add-zsh-hook precmd vcs_info

bold=$(tput bold)
normal=$(tput sgr0)

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats "%{$fg[red]%}%s%{$fg_no_bold[white]%}:%{$fg_bold[yellow]%}%b%m%{$fg_no_bold[default]%} %{$fg_bold[red]%}%c%{$fg_no_bold[default]%}"
# zstyle ':vcs_info:git:*' formats "%s:%b %u%c"
zstyle ':vcs_info:git*' actionformats '%f{14}⏱ %*%f'
zstyle ':vcs_info:git*' unstagedstr '?'
zstyle ':vcs_info:git*' stagedstr '! '
zstyle ':vcs_info:*' check-for-changes true

# RPROMPT='${vcs_info_msg_0_}'
precmd() {
    # As always first run the system so everything is setup correctly.
    vcs_info
    # And then just set PS1, RPS1 and whatever you want to. This $PS1
    # is (as with the other examples above too) just an example of a very
    # basic single-line prompt. See "man zshmisc" for details on how to
    # make this less readable. :-)
    
    newline=$'\n'

    if [[ -z ${vcs_info_msg_0_} ]]; then
        # Oh hey, nothing from vcs_info, so we got more space.
        # Let's print a longer part of $PWD...
        PROMPT='%2T %B%F{green}%1~%f%b $ '
        PROMPT="%F{cyan}╭─%f%2T %B%F{green}%1~%f%b ${newline}%F{cyan}╰──▷%f "
    else
        # vcs_info found something, that needs space. So a shorter $PWD
        # makes sense.
        PROMPT="%F{cyan}╭─%f%2T %B%F{green}%1~%f%b ~ ${vcs_info_msg_0_} ${newline}%F{cyan}╰──▷%f "
    fi
}

### ALIASES

alias explore="tree -C | less -R"
alias vim="nvim"
alias ls='ls --color'

. $HOME/.zsh_aliases
. $HOME/.asdf/asdf.sh
