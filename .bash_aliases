function screen-cleanup () {
    if [ -f /etc/init.d/screen-cleanup ] && ! [ -d /run/screen ]; then
        sudo /etc/init.d/screen-cleanup start
    fi;
}

### Aliases
alias reinit='. ~/.bashrc'
alias via='vi ~/.bash_aliases'
alias viaa='vi ~/.bashrc'
alias scr='screen-cleanup; screen -R -D'
alias cp='cp -ip'
alias rm='rm -i'
alias mv='mv -i'
alias ll='ls -la'
alias gitpush='git push origin master'
alias gitpull='git pull origin master'

### Exports
export LANG=ja_JP.UTF-8
export DISPLAY=:0.0
export EDITOR=/usr/bin/vi
if [[ "$ORIGINAL_PATH" = "" ]]; then
    export ORIGINAL_PATH=$PATH
else
    export PATH=$ORIGINAL_PATH
fi

### Functions

function ps1init() {
    if [[ "$VIRTUAL_ENV" != "" ]]; then
        PS1_PREFIX="(${VIRTUAL_ENV##*/})"
    elif [[ "$MACHTYPE" =~ cygwin ]]; then
        PS1_PREFIX='\e[1;33mcygwin'
    elif [[ "$MACHTYPE" =~ msys ]]; then
        PS1_PREFIX=msys
    else
        PS1_PREFIX=$(uname -m)
    fi
    if [ -n "$WINDOW" ]; then
       PS1_WINDOW='['"$WINDOW"']'
    fi
    PS1="\n$PS1_PREFIX \D{%Y/%m/%d %H:%M:%S} \w \e[m\n\u@\h$PS1_WINDOW\$ "
}
ps1init

### Site Custom Settings

if [[ $HOSTNAME == "G-Tune" ]]; then
    alias sshpi='ssh pi@192.168.3.21'

    export PATH=$HOME/.nodebrew/current/bin:$HOME/.yarn/bin:$HOME/.local/bin:$HOME/bin:$PATH

    export VIRTUALENV_HOME=$HOME/virtualenv
    function vactivate() { source $VIRTUALENV_HOME/$1/bin/activate; ps1init; }
    alias awsinit='vactivate awscli'

    if [[ "$OPAM_SWITCH_PREFIX" = "" ]]; then
       #echo "sourcing opam env" >&2
       eval $(opam env)
    fi
    alias opaminit='eval $(opam env)'
fi


