# Bind Vim Key
fish_vi_key_bindings

# Alias
alias y="yarn"
alias k="kubectl"
alias c="clear"
alias g="git"
alias gstat="git status"
alias gadd="git add -A"
alias gpush="git push"
alias gcm="git commit"
alias gp="git push"
alias catimg="catimg -f"
alias git-client="tig"
alias glog="git log --oneline --graph --color --all --decorate | emojify"
alias t="tmux -u"

source /Users/chunza2542/miniconda3/etc/fish/conf.d/conda.fish

# Automate open tmux
tmux -u

# Fix pbpaste pbcopy bugs on tmux
alias pbcopy="reattach-to-user-namespace pbcopy"
alias pbpaste="reattach-to-user-namespace pbpaste | tmux load-buffer - && tmux paste-buffer"
