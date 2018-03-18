#!/bin/bash
#be sure to call this script from where its located, ie do "./install.sh" do not "../install.sh"
#?TODO get omnisharp-vim working?

profile_file="~/.bashrc"

echo "build-essential cmake python-dev python3-dev mono-devel npm git"
read -r -p "Are the above listed packages installed? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then
    cp -a ./vim/* ~/.vim
    cd ~/.vim/bundle/YouCompleteMe
    git submodule update --init --recursive
    ./install.py --clang-completer --cs-completer --js-completer
    [ -e ~/.bash_profile ] && mv ~/.bash_profile ~/.old_bash_profile|echo "backing up existing .bash_profile to .old_bash_profile..."
    cp ./bash_profile ~/.bash_profile
    if ! grep -q 'source ~/.bash_profile' "${profile_file}" ; then
        echo "Adding 'source ~/.bash_profile' to ${profile_file}"
        echo "source ~/.bash_profile" >> "${profile_file}"
    fi
    [ -e ~/.vimrc ] && mv ~/.vimrc ~/.old_vimrc|echo "backing up existing .vimrc to .old_vimrc..."
    cp ./vimrc ~/.vimrc
    echo "logout and back in to complete setup (or '$ source .bashrc')"
fi

