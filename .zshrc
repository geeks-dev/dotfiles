export EDITOR=vim
export SYSTEMD_EDITOR=vim

path=($HOME/bin(N-/) $path)
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias home='echo $HOME'
alias histclear=': >! $HOME/.zhistory'
alias snbd='sudo systemd-nspawn -b -D'
alias pbcopy='xsel --clipboard --input'

#tmux
if which tmux >/dev/null 2>&1; then
	cd "`pwd`"
	test -z ${TMUX} && tmux
	while test -z ${TMUX}; do
		tmux attach || break
	done
fi
function paclean {
	sudo sh -c "pacman -Qdtq | pacman -Rs -"
}

