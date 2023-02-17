alias v='vim'
alias ggg='git checkout master'
alias fff='git fetch origin'
alias mmm='git fetch origin master && git merge FETCH_HEAD'
alias lo='ifconfig | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'
alias conf='cd ~/Development/configs && vim && cd -'

alias ff='isort . && black . && flake8 .'

alias g='git'
alias ls='ls -GF'
alias ll='ls -Alh'
alias la='ls -alh'
alias l='ll'
alias bb='brew update -v && brew outdated'



# clean python files
pyclean () {
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
} 

ss () {
  state=$(osascript -e 'tell application "Spotify" to player state as string');
  if [ "$state" = "playing" ]; then
    artist=$(osascript -e 'tell application "Spotify" to artist of current track as string');
    album=$(osascript -e 'tell application "Spotify" to album of current track as string');
    track=$(osascript -e 'tell application "Spotify" to name of current track as string');

    printf "Artist: %s\nTrack: %s\nAlbum: %s\n" "$artist" "$track" "$album" ;
  fi
}

alias sss="osascript -e 'tell application \"Spotify\" to name of current track as string'"

notify(){
    var="$1"
    osascript -e 'display notification "$1" with title "Terminal"';
}

clean_json () {
    echo cleaning $1
    cat $1 | jq > /tmp/foo.json
    mv /tmp/foo.json $1
}

clean_all_json () {
    for F_NAME in `find . -name "*.json"`
    do
        clean_json $F_NAME
    done
}

# Sainsbury's Proxy settings
proxy_on() {
  export HTTP_PROXY=http://a-proxy-p.bc.jsplc.net:8080
  export HTTPS_PROXY=http://a-proxy-p.bc.jsplc.net:8080
  export NO_PROXY=localhost,127.0.0.1,.dev,.internal,.local,.jsplc.net,.jstest1.net,.jstest2.net,.jstest3.net,.devjsplc.net,.jhblkf.jsgrp,.blk.js.com,.ishapay.net,.iphapay.net,.client.secure-payment-processing.com,.client.test-secure-payment-processing.com
  # Some tools want the variables in lowercase
  export http_proxy=$HTTP_PROXY
  export https_proxy=$HTTPS_PROXY
  export no_proxy=$NO_PROXY
}

proxy_off() {
  unset http_proxy
  unset https_proxy
  unset no_proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset NO_PROXY
  unset VAGRANT_HTTP_PROXY
  unset VAGRANT_HTTPS_PROXY
  unset VAGRANT_APT_PROXY
  unset VAGRANT_GIT_PROXY
  unset VAGRANT_NO_PROXY
}
