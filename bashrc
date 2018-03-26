
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

PS1="\n\[\033[01;33m\](\A) \[\033[01;32m\]\h!\u \[\033[01;36m\]\w \[\033[01;37m\]\$ \[\033[00m\]"

export CDPATH=.:~:/mnt/:~/Proyectos/
export PATH=$PATH:~/.bash/scripts:~/.local/bin

# bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export ORACLE_HOME=/usr/lib64/oracle/11.2.0.4/client/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME/lib

if [[ $DISPLAY ]]; then
    setxkbmap -option keypad:pointerkeys
fi

if [ -f ~/.bash/bash.aliases ]
then
    . ~/.bash/bash.aliases
    . ~/.bash/bash.aliases.secrets
fi

if [ -f ~/.bash/bash.secrets ]
then
    . ~/.bash/bash.secrets
fi

