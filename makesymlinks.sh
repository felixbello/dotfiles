#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################
#ln -s /home/felix/02-Git/git/dotfiles/i3/i3status.conf /etc/i3status.conf
#echo "i3status config file symlink created"

platform=$(uname);

if [ $platform == 'Linux' ];then
		echo "its linux!"
		ln -s /home/felix/02-Git/git/dotfiles/vim/.vimrc /home/felix/.vimrc
		echo "vim done!"
		ln -s /home/felix/02-Git/git/dotfiles/i3/config /home/felix/.i3/config
		echo "i3 done!"
		# TODO! copy i3status to /etc/i3status
#else 
#	if [ $platform == 'Darwin' ]; then
#	echo "its OSX!"
#else
#	echo "maybe m$?!"
fi

echo "finished!"
