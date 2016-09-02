alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias lo='ifconfig | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias conf='cd ~/Development/configs && vim'

alias devon='cd ~/vagrant-boxes/panbox-python'
alias devup='cd ~/vagrant-boxes/panbox-python && vagrant up'
alias devin='cd ~/vagrant-boxes/panbox-python && vagrant ssh'


eval $(thefuck --alias)

# clean python files
pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
} 

