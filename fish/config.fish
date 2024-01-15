set fish_greeting ""

alias ls="exa -a"
alias vim="nvim"
alias ll="exa -la"
alias sd="cd ~ && cd (find * .* -type d -o -type l | fzf)"

function sf
    set selected_file (find . -type f | fzf)
    if test -n "$selected_file"
        nvim "$selected_file"
    end
end

fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/Stuff/Odin
fish_add_path ~/scripts

if status is-interactive
    # Commands to run in interactive sessions can go here
end
