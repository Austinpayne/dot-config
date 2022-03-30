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
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W $(__git_ps1 "\[\033[01;35m\][%s]\[\033[01;34m\] ")\$\[\033[00m\] '
else
    PS1='\u@\h:\W $(__git_ps1 "[%s] ")\$ '
fi

# Starship shell prompt
eval "$(starship init bash)"
