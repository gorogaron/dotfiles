# Functions
get_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

grep_in_cpp(){
    echo "Searching in files with extension: .cpp, .h, .cxx, .hpp"
    find ./ -regex '.*\.cpp\|.*\.h\|.*\.cxx\|.*\.hpp' | xargs grep -in --color $1
}

# Colors
CYAN_START="\e[1;36m"
LIGHTGREEN_START="\e[1;32m"
PURPLE_START="\e[1;35m"
COLOR_END="\e[m"

# Prompt
export PS1="[${CYAN_START}\\u${COLOR_END}:${LIGHTGREEN_START}\\w${COLOR_END} ${PURPLE_START}\$(get_git_branch)${COLOR_END}]\\$ "

# Aliases
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias ll='ls --color=auto -lah'
alias cdg='cd ~/git'
alias ..="cd .."
alias ...="cd ../../"

alias gs="git status"
alias gaa="git add --all"

alias grepcpp="grep_in_cpp $1"
