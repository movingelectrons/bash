#!/bin/bash
#be sure to call this script from where its located, ie do "./install.sh" do not "../install.sh"
#?TODO get omnisharp-vim working?

profile_file=".bashrc"
initial_pwd=`pwd`

mkdir ~/.vim
cp -a ./vim/* ~/.vim
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --cs-completer --js-completer
[ -e ~/.bash_profile ] && mv ~/.bash_profile ~/.old_bash_profile|echo "backing up existing .bash_profile to .old_bash_profile..."
cd ${initial_pwd}
cp ./bash_profile ~/.bash_profile
cd ${HOME}
if ! [ -e ${profile_file} ]
  then
    touch ${profile_file} |echo "${profile_file} does not exist, creating..."
  fi
if ! grep -q 'source ~/.bash_profile' "${profile_file}" ; then
  echo "Adding 'source ~/.bash_profile' to ${profile_file}"
  echo "source ~/.bash_profile" >> "${profile_file}"
fi
cd ${initial_pwd}
[ -e ~/.vimrc ] && mv ~/.vimrc ~/.old_vimrc|echo "backing up existing .vimrc to .old_vimrc..."
cp ./vimrc ~/.vimrc
    
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc  ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

sudo cp ./autostart/guake.desktop /etc/xdg/autostart/

echo "logout and back in to complete setup (or '$ source ~/.bashrc')"

