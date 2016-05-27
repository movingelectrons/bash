PATH=/usr/local/git/bin:$PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

git() {
    if [[ $@ == "s" ]]; then
        command git status
	elif [[ $@ == "a" ]]; then
        command git add -A
    elif [[ $@ == "c" ]]; then
 		command git commit -m \"use gitk or diff\"
    else
        command git "$@"
    fi
}

#alias git s="git status"
#alias git a="git add -A"
#alias git c="git commit -m \"see gitk or git diff\""

cd ~/

