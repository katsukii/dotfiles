if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export RBENV_ROOT=$HOME/.rben

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"
