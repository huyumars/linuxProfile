#grep
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls color
export  CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
LANG="en_US.UTF-8"
LANGUAGE="en_US:en"


alias lal="ls -al"
alias psg="ps aux| grep "
alias g++14="g++ -std=c++14 "
export EDITOR=/usr/bin/vim
alias grep="grep --color"

#tmux
alias tmux="tmux -u -2"


#git related
alias gitpush="git push origin master"
alias gitpull="git pull origin master"
#commit all changes file
alias gc="git commit -a -m "
alias gl="git log"
alias gs="git status"
alias gd="git diff HEAD^ "
alias gb="git branch"
alias gco="git checkout "
alias grb="git rebase"
alias gitpullo="git pull origin"
alias gitpullu="git pull upstream"
alias gitpusho="git push origin"
alias gitpushu="git push upstream"

#grep related
alias grepcpp="grep -rin --include \*.h --include \*.cpp"
alias grepgo="grep -rin --include \*.go"
alias grepjava="grep -rin --include \*.java"
alias greppy="grep -rin --include \*.py"

#docker related
alias drun="docker run -itd "
unset dsh
dsh(){
 docker exec -it $1 /bin/bash
}

unset gitsyncmaster
gitsyncmaster(){
  git checkout master
  git pull upstream master
}



unset tcl
tcl(){
  rm -rf ../install
  rm -rf ../build
}

unset setProxy
function setProxy() {
  export ALL_PROXY=socks5://127.0.0.1:1086
}


unset unsetProxy
function unsetProxy() {
  unset ALL_PROXY
}

alias setC3Proxy="export ALL_PROXY=ebay1-2891352.slc07.dev.ebayc3.com:6666"
alias unsetC3Proxyr="unset ALL_PROXY"
alias premake='/usr/local/Cellar/premake/4.4-beta5/bin/premake4'

. ~/login/.loginalias
