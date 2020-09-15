# bash specific rc setup

# source global bashrc
[ -f /etc/bashrc ] && source /etc/bashrc
# general rc functionality
[ -f ~/.rc ] && source ~/.rc
# git-completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
# fzf
if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
    export FZF_DEFAULT_OPTS="--extended --cycle --layout=reverse --info=inline"
fi
# PS1
PS1='\u@\h:\W $(__git_ps1 "[%s] ")\$ '
