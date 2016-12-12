export PATH="$(brew --prefix git)/bin:$PATH"
export LOCALDOCKER=127.0.0.1
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

source ~/.bash_aliases
. ~/.bashrc
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
