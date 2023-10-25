#!/bin/bash -e

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew install vim ripgrep fzf tmux git fzf fish fd bat
$(brew --prefix)/opt/fzf/install
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

# シンボリックリンクを貼る
ln -s ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
