zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/home/finn/.config/zsh/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

source ~/.config/zsh/aliases.zsh

eval "$(starship init zsh)"

source ~/.config/zsh/plugins/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting.zsh
