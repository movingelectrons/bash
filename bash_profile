# My ~/.bash_profile

# shorthand functions;
#   'git status' = 'git s', 'git add' = 'git a', 'git commit -m "..."' = 'git c' 
git() {
    if [[ $@ == "s" ]]; then
        command git status
  	elif [[ $@ == "a" ]]; then
        command git add -A
    elif [[ $@ == "c" ]]; then
        command git commit -m "Please excuse my lazyness in ommitting a proper comment for this commit, one can use gitk or a diff to see what changed however."
    else
        command git "$@"
    fi
}

# be able to use ctrl-[q,s,etc] key combos like 'usual' ?... i think..?
stty -ixon
bind -r '\C-s' 

# https://bashrcgenerator.com/
export PS1="\[$(tput bold)\]\[\033[38;5;2m\]\t\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;32m\]\u\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;244m\]@\[$(tput sgr0)\]\[\033[38;5;26m\]\h\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;244m\]:\[$(tput sgr0)\]\[\033[38;5;34m\]\w\[$(tput sgr0)\]\[\033[38;5;11m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;244m\]\\$\[$(tput sgr0)\]"

#these are for WSL only
#export wr=~/../../mnt/c/Users/jeromes/
#alias cdwr='cd "$wr"'
#export DISPLAY=:0

#? for WSL also ? 
#alias msbuild='/c/Windows/Microsoft.NET/Framework64/v4.0.30319/MSBuild.exe'
#alias cmake="/c/Program\ Files/CMake/bin/cmake.exe"
#alias CMake='cmake'

#if you have zcash installed
#alias zlt="zcash-cli getaddressesbyaccount ''"
#alias zlz='zcash-cli z_listaddresses'