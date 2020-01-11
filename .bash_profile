if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"
export PGDATA='/usr/local/var/postgres'
export PATH="$PATH:$HOME/flutter/bin"
# eval "$(hub alias -s)"
exec fish
