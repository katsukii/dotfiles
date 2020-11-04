export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/VirtualBox.app/Contents/MacOS:$PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias ll='ls -la'
alias be='bundle exec'
alias cdperaichi='cd ~/work/peraichi'
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
export EDITOR=vim
eval "$(direnv hook bash)"
