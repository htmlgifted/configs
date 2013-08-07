##################################################
# Automatically inputs aliases here in		 #
# '.bash_aliases'				 #
##################################################

###### Usage: mkalias <name> "<command>"
# Example: mkalias rm "rm -i"
function mkalias()
{
        if [[ $1 && $2 ]]
        then
        echo -e "alias $1=\"$2\"" >> ~/.bash_aliases
        alias $1=$2
        fi
}

# extract - archive extractor
# usage: extract <file>
extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias sedit='sudoedit'
    alias root='sudo -s'
    alias reboot='sudo reboot'
    alias poweroff='sudo shutdown -h now'
    alias update='update = sudo apt-get update && sudo apt-get upgrade'

fi

## ls ##
alias ls='ls -hF --group-directories-first --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

# cd and ls in one
cl() {
if [ -d "$1" ]; then
	cd "$1"
	ls
	else
	echo "bash: cl: '$1': Directory not found"
fi
}

## Safety features ##
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'  # 'rm -i' prompts for every file
# safer alternative w/ timeout, not stored in history
#alias rm=' timeout 3 rm -Iv --one-file-system'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'  # clear screen for real (it does not work in Terminology)

## Make Bash error tollerant ##
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'

# these are short cmnds for History, aliases, and jobs.
alias a='alias'
alias h='history'
alias j='jobs -l

## Package management ##

alias install="sudo apt-get install'	
alias update='sudo apt-get update'		
alias upgrade='sudo apt-get upgrade'		
alias clean='sudo apt-get clean'

## Git ##

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

#script aliases 
## script's alias ##
alias d='/home/$USER"/bin/get'
alias script1='/home/$USER"/script/scriptname.sh'
alias script2='/home/$USER"/script/scriptname.sh'

## SSH ##
alias keygen='ssh-keygen -t rsa -C'

alias getzen='wget -q https://api.github.com/zen -O zen && cat zen && rm zen'
alias reload='clear && . ~/.bashrc'
