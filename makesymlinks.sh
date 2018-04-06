#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################

platform=$(uname);
host=$(hostname)

# check operating system
if [ $platform == 'Linux' ];then
	if [ $USER == 'root' ];then
		echo "U're root!! That's Danger!!"
		echo "its linux!"
        rm -rf /$USER/.vimrc
		ln -s /$USER/02-Git/product/dotfiles/vim/.vimrc /$1SER/.vimrc
		echo "vim done!"
        rm -rf /$USER/.i3/config
        if [ $host == 'cymac-deb8-x64-div'];then
            ln -s /$USER/02-Git/product/dotfiles/i3/config-vm /$USER/.i3/config
        else
		    ln -s /$USER/02-Git/product/dotfiles/i3/config /$USER/.i3/config
        fi
		echo "i3 done!"
		# TODO! copy i3status to /etc/i3status
else
		echo "its linux!"
        echo "..."
        echo "Good Ch01c3!"
        echo "..."
        echo "Great!! You're only an N33rD!!"
        echo "...."
        rm -rf /home/$USER/.vimrc
		ln -s /home/$USER/02-Git/product/dotfiles/vim/.vimrc	/home/$USER/.vimrc
		echo "vim done!"
        # vim()
        rm -rf /home/$USER/.i3/config
		if [[ $host == "cymac-deb8-x64-div" ]];then
            echo "Seems to be an Virtual Machine...." 
            ln -s /home/$USER/02-Git/product/dotfiles/i3/config-vm /home/$USER/.i3/config
        else
            echo "Seems to be an Physical Machine..."
		    ln -s /home/$USER/02-Git/product/dotfiles/i3/config /home/$USER/.i3/config
        fi
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
            ln -s /Users/felix/02-Git/product/dotfiles/osx/zsh_profile /Users/felix/.zshrc
            echo "bash dotfiles done"
	    echo "installing iterm2"
	    brew install iterm2
	    echo "installing oh my zsh"
	    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


#else
#	echo "maybe m$?!"

fi
echo "finished!"

function vim{
    if [ $(dpkg-query -W -f='${Status}' vim 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        apt-get install vim;
    fi
}
