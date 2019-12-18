
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

PS1="\n\[\033[01;33m\](\A) \[\033[01;32m\]\h!\u \[\033[01;36m\]\w \[\033[01;37m\]\$ \[\033[00m\]"

export CDPATH=.:~/Proyectos/:/var/www/p365-sphere/
export PATH=$PATH:~/.local/bin:~/.bash/scripts:~/netbeans-10.0/bin:/var/www/p365-sphere/p365-scripts/environment:/opt/ataraxia/builds/ataraxia-linux-x64

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
fi

if [ -f ~/.bash/bash.secrets ]
then
    . ~/.bash/bash.secrets
fi

