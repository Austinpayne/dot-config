# zsh specific rc setup

fpath=(~/.zsh $fpath)

# source global bashrc
[ -f /etc/zshrc ] && source /etc/zshrc
# general rc functionality
[ -f ~/.rc ] && source ~/.rc
# git-completion
if [ -f ~/.git-completion.bash ]; then
    zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fi
# fzf
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
    export FZF_DEFAULT_OPTS="--extended --cycle --layout=reverse --info=inline"
fi
# PS1
setopt PROMPT_SUBST ; PS1='%n@%m:%1~ $(__git_ps1 "[%s] ")%# '
autoload -Uz compinit && compinit
