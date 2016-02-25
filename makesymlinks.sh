#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################

platform=$(uname);

# check operating system
if [ $platform == 'Linux' ];then
	if [ $USER == 'root' ];then
		echo "U're root!! That's Danger!!"
		echo "its linux!"
		ln -s /$USER/02-Git/product/dotfiles/vim/.vimrc /$USER/.vimrc
		echo "vim done!"
		ln -s /$USER/02-Git/product/dotfiles/i3/config /$USER/.i3/config
		echo "i3 done!"
		# TODO! copy i3status to /etc/i3status
else
		echo "its linux!"
		ln -s /home/$USER/02-Git/product/dotfiles/vim/.vimrc	/home/$USER/.vimrc
		echo "vim done!"
		ln -s /home/$USER/02-Git/product/dotfiles/i3/config	/home/$USER/.i3/config
		echo "i3 done!"
	fi
		elif [ $platform == 'Darwin' ]; then
			echo "its OSX, lets do it!"
			ln -s /Users/$USER/02-Git/product/dotfiles/vim/.vimrc /Users/$USER/.vimrc
    			ln -s /Users/$USER/02-Git/product/dotfiles/productvim/.vim/bundle  /Users/$USER/.vim
    			cd /Users/$USER/02-Git/product/dotfiles/vim/.vim/bundle
    			git clone https://github.com/kien/ctrlp.vim.git
    			git clone https://github.com/klen/python-mode
    			cd /Users/$USER/02-Git/product/dotfiles/vim/.vim/ftplugin
			echo "vim done!"
            echo "some bash dotfiles"
            brew install bash-completion
            ln -s /Users/felix/02-Git/product/dotfiles/osx/bash_profile /Users/felix/.bash_profile
            echo "bash dotfiles done"
#else
#	echo "maybe m$?!"

fi
echo "finished!"
