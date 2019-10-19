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

function fish_prompt --description 'Write out the prompt'
    # Just calculate these once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname "chunza2542"
    end

    if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __git_cb
    set __git_cb ":"(set_color brown)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)""
    end

    switch $USER

    case root

    if not set -q __fish_prompt_cwd
        if set -q fish_color_cwd_root
            set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
        else
            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end
    end

    printf '%s@%s:%s%s%s%s# ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" $__git_cb

    case '*'

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    printf '%s@%s:%s%s%s%s$ ' $USER $__fish_prompt_hostname "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" $__git_cb

    end
end

# Automate open tmux
tmux -u

# Fix pbpaste pbcopy bugs on tmux
alias pbcopy="reattach-to-user-namespace pbcopy"
alias pbpaste="reattach-to-user-namespace pbpaste | tmux load-buffer - && tmux paste-buffer"
