if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export RBENV_ROOT=$HOME/.rben
export PATH=$HOME/.nodebrew/current/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"
