if status is-interactive
    if command -q atuin
       atuin init fish --disable-up-arrow | source
    end
    if test -f /usr/share/autojump/autojump.fish
        source /usr/share/autojump/autojump.fish
    end
end

if test -f "$HOME/.cargo/env.fish"
    source "$HOME/.cargo/env.fish"
end

if test -f "$HOME/.homesick/repos/homeshick/homeshick.fish"
    source "$HOME/.homesick/repos/homeshick/homeshick.fish"
end

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" > /dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH
