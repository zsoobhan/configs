alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias lo='ifconfig | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias conf='cd ~/Development/configs && vim'

alias g='git'
alias ls='ls -GF'
alias ll='ls -Alh'
alias la='ls -alh'
alias l='ll'


alias clean='find . -name "*.pyc" -delete'



# clean python files
pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
} 

