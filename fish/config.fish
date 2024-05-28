set fish_greeting ""

alias ls="exa -a"
alias vim="nvim"
alias ll="exa -la"

function sd
    set selected_directory (find ~ -type d,l | fzf --height=50% \
        --margin=10% \
        --padding=4%,.5% \
        --layout=reverse \
        --border=rounded \
        --prompt='--> ' \
        --pointer='→' \
        --header='find directory' \
        --header-first \
        --color='dark,fg:bright-green')
    
    if test -n "$selected_directory"
        cd "$selected_directory"
    end
end

function sf
    set selected_file (find . -type f | fzf --height=50% \
        --margin=10% \
        --padding=4%,.5% \
        --layout=reverse \
        --border=rounded \
        --prompt='--> ' \
        --pointer='→' \
        --header='find file' \
        --header-first \
        --color='dark,fg:bright-green')
    
    if test -n "$selected_file"
        nvim "$selected_file"
    end
end

fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/Stuff/Odin
fish_add_path /usr/local/go/bin
fish_add_path ~/.nvm
fish_add_path ~/.dotnet/tools

if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end

starship init fish | source
