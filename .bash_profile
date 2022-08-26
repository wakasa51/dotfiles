if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PGDATA='/usr/local/var/postgres'
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/dotfiles/bin"
export PATH="$PATH:$HOME/.yvm/yvm"
export PATH="/usr/local/opt/llvm/bin:$PATH"
# eval "$(hub alias -s)"
export PATH="/usr/local/opt/awscli@1/bin:$PATH"
export YVM_DIR=/Users/takayasuma/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

source "$HOME/.cargo/env"
exec fish
