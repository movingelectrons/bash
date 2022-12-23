# My ~/.bash_profile

# for showing currently selected git branch
PATH=/usr/local/git/bin:$PATH
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# ... really wish i knew what all this does better; 
#   colorizes bash prompt, shows time, current folder, yada yada..
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# shorthand functions;
#   'git status' = 'git s', 'git add' = 'git a', 'git commit -m "..."' = 'git c' 
function gitcom() {
    git commit -m "Please excuse my lazyness in ommitting a proper comment for this commit, one can use gitk or a diff to see what changed however."
}
git() {
    if [[ $@ == "s" ]]; then
        command git status
  	elif [[ $@ == "a" ]]; then
        command git add -A
    elif [[ $@ == "c" ]]; then
        gitcom
    else
        command git "$@"
    fi
}

# allows tab completion to be case insensitive?  or something...
bind -r '\C-s'
# be able to use ctrl-[q,s,etc] key combos like 'usual'
stty -ixon

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