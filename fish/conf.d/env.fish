# term
set TERM "tmux-256color"

# neovim
set -gx EDITOR nvim
set -gx VISUAL nvim

# theme
set -gx GTK_THEME Arc-Dark

# chrome exec - default browser
set -gx CHROME_EXECUTABLE /usr/bin/vivaldi

# dbus config
export $(dbus-launch)

## user

# fish
fish_add_path $HOME/.npm-packages
fish_add_path $NPM_PACKAGES/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/scripts
fish_add_path $HOME/.local/share/JetBrains/Toolbox/scripts 
set -U fish_user_paths ~/.npmbin/bin $fish_user_paths
