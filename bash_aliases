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
