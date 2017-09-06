# Set git autocompletion and PS1 integration
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]; then
 . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
fi

HISTSIZE=5000
HISTFILESIZE=10000


source /usr/local/bin/virtualenvwrapper.sh


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Go Lang
export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

export NVM_DIR="/Users/Home/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
