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

echo "Installing supertab"
git clone https://github.com/ervandew/supertab my_plugins/supertab

echo "========================================="
echo "Installing YouCompleteMe is optional"
echo "However, it will require vim of higher version"
echo "To install it, uncomment the corresponding"
echo "section in install_awesome_vimrc.sh"
echo "========================================="


# git clone https://github.com/queezythegreat/vim-YouCompleteMe my_plugins/YouCompleteMe/


echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
