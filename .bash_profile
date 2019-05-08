if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"
exec fish
