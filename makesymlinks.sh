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
	ln -s /Users/felix/02-git/git/dotfiles/vim/.vimrc /Users/felix/.vim
	echo "vim done!"
#else
#	echo "maybe m$?!"
fi
echo "finished!"
