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

PS1='${debian_chroot:+($debian_chroot)}\u@\h${WINDOW:+[$WINDOW]}:\w\$ '
case "$TERM" in
xterm*|rxvt*|screen*)     # If this is an xterm set the title to user@host:dir
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
esac

