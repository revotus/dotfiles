#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PYTHONPATH="${PYTHONPATH}:$HOME/Projects"
export PROJECT_HOME="$HOME/Projects"
export PYTHONDONTWRITEBYTECODE=1

# Set architecture flags
if [[ "$OSTYPE" == darwin* ]]; then
    export ARCHFLAGS="-arch x86_64"
fi
