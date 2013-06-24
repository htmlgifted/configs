##################################################
# Automatically inputs aliases here in		 #
# '.bash_aliases'					 #
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
      *.rar)       unrar x $1     ;;
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
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias update='sudo pacman -Syyu'
    alias netctl='sudo netctl'
fi

## ls ##
alias ls='ls -hF --color=auto'
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
alias rm=' timeout 3 rm -Iv --one-file-system'
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


## Package management ##

alias p="sudo pacman -S"		# default action
alias pu="pacman -Syu"		# '[u]pdate'
alias pr="sudo pacman -Rs"		# '[r]emove'
alias ps="pacman -Ss"		# '[s]earch'
alias pi="pacman -Si"		# '[i]nfo
alias plo="pacman -Qdt"		# '[l]ist [o]rphans'
alias pc="sudo pacman -Scc"		# '[c]lean cache'
alias plf="pacman -Ql"		# '[l]ist [f]iles'
alias pex="pacman -D --asexp"	# 'mark as [ex]plicit'
alias pim="pacman -D --asdep"	# 'mark as [im]plicit'
alias y='yaourt -Sy'
alias ys='yaourt -Ss'
alias yi='yaourt -Si'

# '[r]emove [o]rphans'
alias pro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

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

alias reload='clear && . ~/.bashrc'
