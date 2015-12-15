EDITOR=vim
path=($HOME/bin(N-/) $path)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias home='echo $HOME'
alias histclear=': >! $HOME/.zhistory'


#tmux
if which tmux >/dev/null 2>&1; then
    cd `pwd`
    test -z ${TMUX} && tmux
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi
