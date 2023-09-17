#!/bin/bash
######################################
# Setup for new Systems by Felix Bello
######################################

platform=$(uname);
host=$(hostname)

# check operating system
function vim (){
    if [ $(dpkg-query -W -f='${Status}' vim 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        apt-get install vim;
    fi
}

function welcome_msg () {
	echo "################################################################"
	echo "#"
	echo "# Welcome to the Setup process for a new Computer Systems"
	echo "#"
	echo "################################################################"
}

function install_homebrew () {
	echo "################################################################"
	echo "#"
	echo "# Installing Homebrew"
	echo "#"
	echo "################################################################"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/felix/.zprofile
	eval "$(/usr/local/bin/brew shellenv)"
}

function empty_space () {
	echo " "
	echo " "
	echo " "
}

welcome_msg

empty_space

install_homebrew
