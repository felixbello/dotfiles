#!/bin/bash
#################################
# Symlinks creator by Felix Bello
#################################

platform=$(uname);
host=$(hostname)

# check operating system
function vim (){
    if [ $(dpkg-query -W -f='${Status}' vim 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        apt-get install vim;
    fi
}

echo "testing"