## git clone
    git clone https://github.com/huangxs139/dotfiles ~/Git/dotfiles
## sources list for Intel
    cd src_list_for_intel
    sudo add-apt-repository http://linux-ftp.sh.intel.com/pub/mirrors/ubuntu
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
    sudo cp xenial-otc-sh_etc_apt_sources.list.txt /etc/apt/sources.list
### configure & install vim
    git clone https://github.com/vim/vim.git ~/Git/vim
    bash vim/conf.sh
# .vimrc & .vim/color
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp ~/Git/dotfiles/vim_conf_files/conf.sh ~/Git/vim/conf.sh
    cp ~/Git/dotfiles/vim_conf_files/vimrc ~/.vimrc
    cp -r ~/Git/dotfiles/vim_conf_files/vim ~/.vim
    vim
    :PluginInstall
## solarized color for gnome-terminal
    git clone https://github.com/seebi/dircolors-solarized.git ~/Git/dircolors-solarized
    git clone https://github.com/sigurdga/gnome-terminal-colors-solarized ~/Git/gnome-terminal-colors-solarized
    echo 'export TERM=xterm-256color' >> ~/.bashrc
    source ~/.bashrc
    cp ~/Git/dircolors-solarized/dircolors.256dark ~/.dircolors
    eval 'dircolors .dircolors'
    bash ~/Git/gnome-terminal-colors-solarized/set_dark.sh
