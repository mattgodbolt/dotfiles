if status is-interactive
    if command -q atuin
       atuin init fish --disable-up-arrow | source
    end
    if test -f /usr/share/aujump/autojump.fish
        source /usr/share/autojump/autojump.fish
    end
end

if test -f "$HOME/.homesick/repos/homeshick/homeshick.fish"
    source "$HOME/.homesick/repos/homeshick/homeshick.fish"
end
