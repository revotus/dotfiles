if which pipenv > /dev/null
    eval (pipenv --completion)
end

switch (uname)
    case Linux
        eval (dircolors -c $HOME/.config/dircolors/dircolors.ansi-dark)
    case Darwin
        eval (gdircolors -c $HOME/.config/dircolors/dircolors.ansi-dark)
end

set -g theme_color_scheme solarized-dark
set -g VIRTUAL_ENV_DISABLE_PROMPT 1

set -x GARCTL_REGION us-east-1
set -x PYTHONDONTWRITEBYTECODE 1
