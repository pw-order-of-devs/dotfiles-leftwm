setxkbmap pl

if status is-interactive
    # configure screens
    autorandr --change work
    # initialize starship
    starship init fish | source
end
