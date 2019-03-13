export PATH="$(brew --prefix git)/bin:$PATH"
export LOCALDOCKER=127.0.0.1
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
eval "$(pyenv init -)"
source ~/.bash_aliases
