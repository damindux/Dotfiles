set fish_greeting ""

alias ls="ls -a"
alias vim="nvim"
alias ll="exa -la"

fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end
