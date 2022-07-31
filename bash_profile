export PATH="$(brew --prefix git)/bin:$PATH"
export LOCALDOCKER=127.0.0.1
# export VIRTUALENVWRAPPER_PYTHON=/Users/zsoobhan/.pyenv/shims/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# eval "$(pyenv init -)"
source ~/.bash_aliases

VIRTUALENVWRAPPER_PYTHON=$(which python3)

export WORKON_HOME=$HOME/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

# if command -v pyenv 1>/dev/null 2>&1; then
  # eval "$(pyenv init -)"
# fi

# export PYENV_ROOT="$HOME/.pyenv" 
# export PATH="$PYENV_ROOT/bin:$PATH" 
# eval "$(pyenv init --path)" 
# eval "$(pyenv init -)"
