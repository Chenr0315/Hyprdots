HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"

# 移除重复的命令历史
setopt HIST_IGNORE_ALL_DUPS
# 免输入cd进入目录
setopt auto_cd
