if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="${HOME}/.ndenv/bin:${PATH}"
eval "$(ndenv init -)"
exec fish

