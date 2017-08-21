#!/bin/bash
mv ~/.bash_profile ~/.old_bash_profile
cp ./bash_profile ~/.bash_profile
source ~/.bash_profile
cp ./vimrc ~/.vimrc
cp -r ./vim ~/.vim

 
#FIXME
#cd ~/.vim/bundle/omnisharp-vim
#git submodule update --init --recursive
#cd server
#/c/Windows/Microsoft.NET/Framework64/v4.0.30319/MSBuild.exe

#cd ~/.vim/bundle/youcompleteme
#git submodule update --init --recursive
#py.exe -3 ./install.py --clang-completer
#'

cd ~/

