setxkbmap pl

if status is-interactive
    # configure screens
    autorandr --change work >/dev/null 2>&1

    # configure power settings - screen saver
    xset s off
    xset s noblank
    xset -dpms

    # initialize starship
    starship init fish | source

    neofetch
end
