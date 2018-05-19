# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f ~/.colorrc ]; then
	eval `dircolors ~/.colorrc`
fi

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi

