HISTSIZE=5000
HISTFILESIZE=10000
alias ls='ls -G'
alias grep='grep --color'

alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CFh'

alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias g='git'
alias lo='ifconfig | grep "192"'

source /usr/local/bin/virtualenvwrapper.sh

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
