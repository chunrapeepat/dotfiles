# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX="true"
ENABLE_CORRECTION="true"

# Path to your oh-my-zsh installation.
export ZSH="/Users/chunza2542/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
	git
	wd
	asdf
	fd
	fzf
	gcloud
	history
	kubectl
	node
	npm
	npx
	tig
	tmux
	yarn
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Aliases
alias y="yarn"
alias k="kubectl"
alias c="clear"
alias g="git"
alias gstat="git status"
alias gadd="git add -A"
alias gpush="git push"
alias gp="git push"
alias git-client="tig"
alias glog="git log --oneline --graph --color --all --decorate | emojify"
alias t="tmux -u"
alias d="docker"

# configuration
[[ $TERM != "screen" ]] && exec tmux -u
set -o vi

source $ZSH/oh-my-zsh.sh