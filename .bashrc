#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell options
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

set echo-control-characters off

# Export defaults

if [ -f ~/.exports ]; then
	    . ~/.exports
fi

# Bash completion

if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

# Import aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

[ ! "$UID" = "0" ] && mybey

## Greeting
# from Jonathan's .bashrc file (by ~71KR117)
# get current hour (24 clock format i.e. 0-23)
hour=$(date +"%H")
# if it is midnight to midafternoon will say G'morning
if [ $hour -ge 0 -a $hour -lt 12 ]
then
  greet="Good Morning, $USER. Time to show your Talent."
# if it is midafternoon to evening ( before 6 pm) will say G'noon
elif [ $hour -ge 12 -a $hour -lt 18 ]
then
  greet="Good Afternoon, $USER. Time to show your Talent"
else # it is good evening till midnight
  greet="Good Evening, $USER. Time to show your Talent."
fi
# display greeting
echo $greet
# set the prompt
export PS1='\n\w\n\[\e[32m\]$ \[\e[0m\]'

