set TERM "tmux-256color"
setxkbmap pl

alias pau='paru -Syu'
alias pauu='paru -Syyuu'

# neovim
alias vim nvim
set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx GTK_THEME Arc-Dark
set -gx CHROME_EXECUTABLE /usr/bin/brave

fish_add_path $HOME/.npm-packages
fish_add_path $NPM_PACKAGES/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin

set -U fish_user_paths ~/.npmbin/bin $fish_user_paths
# starship
starship init fish | source

