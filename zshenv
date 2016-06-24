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

# export PIP_REQUIRE_VIRTUALENV=true
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Projects
export PATH="$HOME/miniconda2/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="$HOME/miniconda/share/man:/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PYTHONPATH="$HOME/Projects:$PYTHONPATH"

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
