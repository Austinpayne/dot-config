# bash specific rc setup

# source global bashrc
[ -s /etc/bashrc ] && source /etc/bashrc
# general rc functionality
[ -s ~/.rc ] && source ~/.rc
# git-completion
if [ -s ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
# fzf
if [ -s ~/.fzf.bash ]; then
    source ~/.fzf.bash
    export FZF_DEFAULT_OPTS="--extended --cycle --layout=reverse --info=inline"
fi
# PS1
PS1='\u@\h:\W $(__git_ps1 "[%s] ")\$ '
