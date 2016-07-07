#! /bin/bash
set -x

apt install zlib1g-dev ruby-all-dev libperl-dev libssl-dev libffi-dev libcurl4-openssl-dev vim vim-gnome vim-gtk vim-nox vim-athena ctags cscope parallel

git clone https://github.com/seebi/dircolors-solarized.git ~/Git/dircolors-solarized
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized ~/Git/gnome-terminal-colors-solarized
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'export TERM=xterm-256color' >> ~/.bashrc
cp ~/Git/dircolors-solarized/dircolors.256dark ~/.dircolors
eval 'dircolors .dircolors'
bash ~/Git/gnome-terminal-colors-solarized/set_dark.sh

cp -r ~/Git/dotfiles/vim_conf_files/vim ~/.vim
cp ~/Git/dotfiles/vim_conf_files/vimrc ~/.vimrc

gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
gem install rubocop

set +x

echo "All Work finished. After your will need to:"
echo "1. open Vim and type ':PluginInstall' to install plugins"
echo "2. reboot your system to enable Solarized in Terminal"
echo "Enjoy!"
