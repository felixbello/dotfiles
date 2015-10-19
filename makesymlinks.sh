#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################
ln -s /home/felix/02-Git/git/dotfiles/vim/.vimrc /home/felix/.vimrc
echo "vim dotfile symlink created"
ln -s /home/felix/02-Git/git/dotfiles/i3/config /home/felix/.i3/config
echo "i3 config file symlink created"
ln -s /home/felix/02-Git/git/dotfiles/i3/i3status.conf /etc/i3status.conf
echo "i3status config file symlink created"
