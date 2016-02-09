#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################

platform=$(uname);

# check operating system
if [ $platform == 'Linux' ];then
		echo "its linux!"
		ln -s /home/felix/02-git/git/dotfiles/vim/.vimrc /home/felix/.vimrc
		echo "vim done!"
		ln -s /home/felix/02-git/git/dotfiles/i3/config /home/felix/.i3/config
		echo "i3 done!"
		# TODO! copy i3status to /etc/i3status

elif [ $platform == 'Darwin' ]; then
	echo "its OSX, lets do it!"
	ln -s /Users/felix/02-Git/product/dotfiles/vim/.vimrc /Users/felix/.vimrc
    ln -s /Users/felix/02-Git/product/dotfiles/vim/.vim/bundle  /Users/felix/.vim
    cd /Users/felix/02-Git/product/dotfiles/vim/.vim/bundle
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/klen/python-mode
    cd /Users/felix/02-Git/product/dotfiles/vim/.vim/ftplugin
	echo "vim done!"
#else
#	echo "maybe m$?!"
fi
echo "finished!"
