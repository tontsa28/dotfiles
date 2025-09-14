export PATH=$PATH:/opt/homebrew/bin:/opt/homebrew/opt/binutils/bin:/Library/TeX/texbin
alias sleepmode="sudo pmset -a hibernatemode 3"
alias hibernatemode="sudo pmset -a hibernatemode 25"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/miika/.zshrc'

autoload -U colors && colors

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

alias ls="ls -1 --color=auto"

setopt PROMPT_SUBST
PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$fg[green]%}:%~%{$reset_color%}$%b "

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
