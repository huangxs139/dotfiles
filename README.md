<center> ~ Enjoy Deploying in a Fast and Automatic Way ~ </center>

## Overview

To get a new installed linux prepared with basic settings of **vim** and **color scheme** *(of course this is the most important ^v^)*, follow steps with files in this repository may save your time.

These operations are included:
+ Use color scheme **Solarized** in **Terminal**
+ Auto-install **vim** for **C/C++/Python/Ruby** development *(Recommended)*
+ Auto-install **Plugins** for **vim** *(Recommended)*
+ Install **vim** from source code with custom configuration *(Optioned)*

## Quick Start

Started by cloning this repository to your workspace as:

    $ git clone https://github.com/huangxs139/dotfiles ~/Git/dotfiles

Then run as root:

    $ sudo bash ~/Git/dotfiles/autorun.sh

After finishing successfully, you may install vim's plugins manually. `reboot` is also necessary for enabling terminal's colorscheme:

    $ vim
    (Normal) :PluginInstall
    $ sudo reboot

Enjoy~!

## Solarized Colorscheme for Terminal

Solarized Colorscheme can be chosen in `Terminal->Profiles->Profile Preferences->Colors` while using Ubuntu operating system. One problem is the default scheme shows almost all things in gray tone, which brings not so good experience especially when using `ls` command.

Two modified version are recommended. Get them by:

    $ git clone https://github.com/seebi/dircolors-solarized.git ~/Git/dircolors-solarized
    $ git clone https://github.com/sigurdga/gnome-terminal-colors-solarized ~/Git/gnome-terminal-colors-solarized

After cloned, some configuration should be done by:

    $ echo 'export TERM=xterm-256color' >> ~/.bashrc
    $ cp ~/Git/dircolors-solarized/dircolors.256dark ~/.dircolors
    $ sudo eval 'dircolors .dircolors'
    $ bash ~/Git/gnome-terminal-colors-solarized/set_dark.sh
    $ sudo reboot

Try `ls` after rebooted~
> To paste pictures here.

## Auto-install Vim for C/C++/Python/Ruby

Before installing **vim**, it is highly recommended to previously re-install **development version** for important libraries. Take the following list as a reference:

    $ sudo apt install zlib1g-dev ruby-all-dev libperl-dev libssl-dev libffi-dev libcurl4-openssl-dev

Next, install typical 5 packages of **vim**, which may enable most features needed by plugins in vim automatically. Do this by:

    $ sudo apt install vim vim-gnome vim-gtk vim-nox vim-athena

Actually, I can never tell differences between these packages, so I always installed them all. But I am sure that installing `vim-nox` and `vim-athena` is the simplest way to enable support to `ruby` which is responsible for code completion plugins.

## Auto-install Plugins for Vim

First of all, as I've said the colorscheme is most important, get solorized profile ready by:

    $ cp -r ~/Git/dotfiles/vim_conf_files/vim ~/.vim

Next, install Vundle to manage plugins by:

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Then, simply copy vimrc in dotfiles/vim_conf_files/ to home directory and open vim editor to install defined plugins by:

    $ cp ~/Git/dotfiles/vim_conf_files/vimrc ~/.vimrc
    $ vim
    (Normal) :PluginInstall

At last, install following recommended tools via apt package manager and RubyGems by:

    $ sudo apt install ctags cscope parallel
    $ sudo gem install rubocop

## Install Vim from Source Codes with Custom Configuration

By doing this, you must download source codes of vim from http://www.vim.org or by, such as:

    $ git clone https://github.com/vim/vim.git ~/Git/vim

Then change to vim's src directory to run as:

    $ cd ~/Git/vim/src
    $ make
    $ sudo make install

Also, you can run `vim/src/configure` with custom config flags and arguments.

Another way is to copy `conf.sh` in `dotfiles/vim_conf_files/` to `vim/src/` as I offered this autoscript. Some modifications is needed on your condition. Run as:

    $ cp ~/Git/dotfiles/vim_conf_files/conf.sh ~/Git/vim/src/
    $ cd ~/Git/vim/src
    $ sudo bash conf.sh

#### Others

If there is anything what you think is very useful, or any one operation that is executed repeatedly once a new Linux installed, please let me know by raising issue or emailing to <huangxs139@163.com>
