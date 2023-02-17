export PATH="$(brew --prefix git)/bin:$PATH"
export LOCALDOCKER=127.0.0.1
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
source ~/.bash_aliases

VIRTUALENVWRAPPER_PYTHON=$(which python3)

export WORKON_HOME=$HOME/.virtualenvs
