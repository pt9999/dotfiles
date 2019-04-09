alias reinit='. ~/.bashrc'
alias via='vi ~/.bash_aliases'
alias viaa='vi ~/.bashrc'
alias scr='screen -R -D'
alias cp='cp -ip'
alias rm='rm -i'
alias mv='mv -i'
alias ll='ls -la'
alias gitpush='git push origin master'
alias gitpull='git pull origin master'

export EDITOR=/usr/bin/vi


if [[ "$MACHTYPE" =~ cygwin ]]; then
    PS1_MACHTYPE='\e[1;33mcygwin'
elif [[ "$MACHTYPE" =~ msys ]]; then
    PS1_MACHTYPE=msys
else
    PS1_MACHTYPE=$(uname -m)
fi
if [ -n "$WINDOW" ]; then
   PS1_WINDOW='['"$WINDOW"']'
fi
PS1="\n$PS1_MACHTYPE \D{%Y/%m/%d %H:%M:%S} \w \e[m\n\u@\h$PS1_WINDOW\$ "
