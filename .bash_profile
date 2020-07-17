if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"
export PGDATA='/usr/local/var/postgres'
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/dotfiles/bin"
export PATH="$PATH:$HOME/.yvm/yvm"
# eval "$(hub alias -s)"
export YVM_DIR=/Users/takayasuma/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

exec fish
