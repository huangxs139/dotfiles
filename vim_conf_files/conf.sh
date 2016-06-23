#! /bin/bash

sudo apt install vim-nox vim-gtk vim-gnome vim-athena
./configure \
  --with-features=huge \
  --enable-cscope \
  --enable-largefile \
  --enable-rubyinterp \
  --enable-pythoninterp \
  --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
  --enable-python3interp \
  --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ \
  --enable-perlinterp \
  --enable-luainterp \
  --with-lua-prefix=/usr \
  --enable-fail-if-missing \
  --enable-gui=gnome2
make
sudo make install
