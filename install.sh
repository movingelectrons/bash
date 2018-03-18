#!/bin/bash
#be sure to call this script from where its located, ie do "./install.sh" do not "../install.sh"
#?TODO get omnisharp-vim working?

profile_file="~/.bashrc"

echo "build-essential cmake python-dev python3-dev mono-devel npm git"
read -r -p "Are the above listed packages installed? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then
    [ -e ~/.bash_profile ] && mv ~/.bash_profile ~/.old_bash_profile|echo "backing up existing .bash_profile to .old_bash_profile..."
    cp ./bash_profile ~/.bash_profile
    if ! grep -q 'source ~/.bash_profile' "${profile_file}" ; then
        echo "Editing ${profile_file} to source ~/.bash_profile"
        echo "source \"source ~/.bash_profile\"" >> "${profile_file}"
    fi
    cp ./vimrc ~/.vimrc
    cp -a ./vim/* ~/.vim
    cd ~/.vim/bundle/YouCompleteMe
    git submodule update --init --recursive
    ./install.py --clang-completer --cs-completer --js-completer
    echo "logout and back in to complete setup (or ': source .bashrc')"
fi

