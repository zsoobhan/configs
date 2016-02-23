# Set git autocompletion and PS1 integration
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
 . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi



source /usr/share/bash-completion/completions/git

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

HISTSIZE=5000
HISTFILESIZE=10000

alias g='git'
__git_complete g __git_main


alias ls='ls -bF --color'
alias ll='ls -Alh'
alias l='ll'
alias la='ls -alh'
alias sl='sl -ae'

alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias lo='ifconfig | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias conf='cd ~/Development/configs && vim'

alias devon='cd ~/Dev/dev-tools'
alias devup='cd ~/Dev/dev-tools && vagrant up'
alias devin='cd ~/Dev/dev-tools && vagrant ssh'
alias clean='find . -name "*.pyc" -delete'


eval $(thefuck --alias)

# clean python files
pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
} 
