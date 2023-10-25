export PATH="/opt/homebrew/bin:$PATH"
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PGDATA='/usr/local/var/postgres'
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/dotfiles/bin"
export PATH="/usr/local/opt/awscli@1/bin:$PATH"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/takashi.yasuma/google-cloud-sdk/path.bash.inc' ]; then . '/Users/takashi.yasuma/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/takashi.yasuma/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/takashi.yasuma/google-cloud-sdk/completion.bash.inc'; fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
