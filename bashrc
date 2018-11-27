#
# ~/.bashrc
#

# Force terminal to use 256 colours
export TERM=xterm-256color

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Modify colours so that directories in NTFS drives 
# aren't highlighted
if [ "$TERM" != "dumb" ]; then
	eval "`dircolors ~/.bash/.mydircolors`"
	alias ls='ls --color=auto'
fi

#PS1='[\u@\h \W]\$ '

#Same as below, but shows entire working directory path
#PS1="\[\e[0;37m\]\t\[\e[m\] \[\e[1;92m\]\u\[\e[m\] \[\e[1;94m\]\w\[\e[m\] \[\e[1;92m\]\$ \[\e[m\]\[\e[0;97m\]"

# Prompt
PS1="\[\e[0;37m\]\t\[\e[m\] \[\e[1;92m\]\u\[\e[m\] \[\e[1;94m\]\W\[\e[m\] \[\e[1;92m\]\$ \[\e[m\]\[\e[0;97m\]"

# Set cursor to underline
echo -e -n "\x1b[\x33 q"

# Turn bell off in xterm and vim
xset b off
xset b 0 0 0

alias bu_up="sh ~/Documents/Projects/Backup\ Scripts/drive_term.sh"
alias bu_down="~/bin/bu_down"
alias exec="~/bin/exec.sh"

# This allows powerline to keep track of PWD
export POWERLINE_NO_SHELL_PROMPT="TRUE"
. /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
