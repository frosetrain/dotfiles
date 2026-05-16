if status is-interactive
    # Commands to run in interactive sessions can go here
end

function postexec_test --on-event fish_postexec
    if string match -qr '^clear($|\s)' -- "$argv[1]"
        return
    end

    echo
end

fish_add_path ~/.local/bin
# fish_add_path ~/.bun/bin
fish_add_path ~/.cargo/bin

set -g fish_greeting

abbr c clear

starship init fish | source
enable_transience
zoxide init fish --cmd cd | source
source ~/.aliases

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# terminal-wakatime setup
set -gx PATH "$HOME/.wakatime" $PATH
terminal-wakatime init fish | source
