#!/bin/bash -e
cp ./.gitconfig ~/.gitconfig
ln -s ./.bash_profile ~/.bash_profile
ln -s ./.bashrc ~/.bashrc

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
ln -s ./.config/fish/config.fish ~/.config/fish/config.fish

brew install vim ripgrep fzf tmux git fzf fish fd bat
$(brew --prefix)/opt/fzf/install

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ./.vimrc ~/.vimrc

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

# シンボリックリンクを貼る
ln -s ./.tmux.conf ~/.tmux.conf
