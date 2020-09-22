# zsh specific rc setup

fpath=(~/.zsh $fpath)

# source global bashrc
[ -s /etc/zshrc ] && source /etc/zshrc
# general rc functionality
[ -s ~/.rc ] && source ~/.rc
# git-completion
if [ -s ~/.git-completion.bash ]; then
    zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fi
# fzf
if [ -s ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_OPTS="--extended --cycle --layout=reverse --info=inline"
fi
# PS1
setopt PROMPT_SUBST ; PS1='%n@%m:%1~ $(__git_ps1 "[%s] ")%# '
autoload -Uz compinit && compinit
