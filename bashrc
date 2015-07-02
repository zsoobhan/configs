# Set git autocompletion and PS1 integration
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
 . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

HISTSIZE=5000
HISTFILESIZE=10000
alias g='git'
__git_complete g _git

alias ls='ls -G'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CFh'

alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias lo='ifconfig | grep "192"'
alias conf='cd ~/personal/configs && vim'

alias devon='cd ~/Dev/dev-tools'
alias devup='cd ~/Dev/dev-tools && vagrant up'
alias devin='cd ~/Dev/dev-tools && vagrant ssh'
alias clean='find . -name "*.pyc" -delete'

source /usr/local/bin/virtualenvwrapper.sh


# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
