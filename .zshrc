HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/miniconda3/etc/profile.d/conda.sh

setopt HIST_IGNORE_ALL_DUPS
autoload -U compinit
compinit

case $(tty) in
	(/dev/tty[1-9]) ;;
	(*) eval "$(starship init zsh)";;
esac
