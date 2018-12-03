#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installing YouCompleteMe"
mkdir YouCompleteMe
git clone https://github.com/Valloric/YouCompleteMe.git my_plugins/YouCompleteMe
cd my_configs/YouCompleteMe
git submodule update --init --recursive
python install.py
echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
