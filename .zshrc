HISTFILE=$XDG_CACHE_HOME/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/miniconda3/etc/profile.d/conda.sh

autoload -U compinit
compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"

zstyle ':completion:*' menu select
setopt HIST_IGNORE_ALL_DUPS
setopt completealiases

alias sysinfo='fastfetch -s Title:Separator:OS:Host:Kernel:Uptime:Shell:Terminal:CPU:Memory:Swap:Disk:LocalIp:Battery:DateTime:Break:Colors'
case $(tty) in
	(/dev/tty[1-9]) sysinfo;;
	(*) eval "$(starship init zsh)";;
esac
