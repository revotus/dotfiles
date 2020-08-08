#!/usr/bin/env fish

if set colorfuncs (command -s dircolors gdircolors)
    set colorsfile $HOME/.config/dircolors/dircolors.ansi-dark
    $colorfuncs[1] -c $colorsfile > /dev/null
end

set theme_color_scheme solarized-dark

set VIRTUAL_ENV_DISABLE_PROMPT 1

set -x GARCTL_REGION us-east-1
set -x PYTHONDONTWRITEBYTECODE 1

switch (uname)
    case Darwin
        contains /usr/local/opt/gnu-sed/libexec/gnubin $fish_user_paths; or set -Ua fish_user_paths /usr/local/opt/gnu-sed/libexec/gnubin
    case Linux
        contains /snap/bin $fish_user_paths; or set -Ua fish_user_paths /snap/bin
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
