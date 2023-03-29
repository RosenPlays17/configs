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

alias ls='ls -shC --color=auto'
alias grep='grep --color=auto'
alias reboot='doas reboot'
alias poweroff='doas poweroff'
alias pacman='doas pacman'
alias mount='doas mount'
alias umount='doas umount'
alias spt='spotifyd && spt'
alias pipes='pipes.sh -p 7 -t 0 -f 60 -R -r 0'
alias screenshot='import'
alias gotop='gotop -s -r 600ms --nvidia'
alias update-grub='doas grub-mkconfig -o /boot/grub/grub.cfg'
alias weather='curl wttr.in/düsseldorf'
alias cp='cp -v'
alias checkbashisms='checkbashisms -nplx'
alias syncmonero='monerod --zmq-pub tcp://127.0.0.1:18083 --out-peers 64 --in-peers 32 --add-priority-node=node.supportxmr.com:18080 --add-priority-node=nodes.hashvault.pro:18080 --disable-dns-checkpoints --enable-dns-blocklist --prune-blockchain'

eval "$(starship init zsh)"

source /usr/share/zsh/extensions/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
