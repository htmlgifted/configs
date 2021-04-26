configs
=======

#Main Developer - gld1982ltd - https://github.com/gld1982ltd

#ubuntu branch Developer - Htmlgifted - https://github.com/htmlgifted



My config files

INSTALLATION
```bash
git clone https://github.com/htmlgifted/configs.git && cd configs && ./INSTALL
```
#01/25/2015 Added two files
#04/00/2021 Added new files and updates for alais's
#o4/26/2021 updated this read me


#About this project
This project was created by me and a really good pal online (name here).
The project was offered to me and I used it to create a fun and easy to use cli interface for ubuntu. I have been working and using these scripts since *ubuntu 14.04*
I have updated the script for usage with the bash shell as the commands and options change from time to time. as of today's updates and changes in commands and adding more scripts.
As of these updates and changes I am using these scripts and commands on my xubuntu 18.04 system.

If you like this set of config files please feel free to star the respitorie.

# Files
1. .bash_profile
2. .bashrc
3. .bash_aliases
4. .exports
5. .gitconfig
6. bin/mybey
7. INSTALL
8. This readme.

# .bash_profile
This file will be the first file sourced by bash when a user logs in. It sets up any system wide programs usually called upon by bash a;nd sets up the initial $PATH variable.

# .bashrc
This file is sourced by .bash_profile and is the recommended file to edit for user configuration. This file sets general bash options, command aliases, environment variables and throws a nice greeting to the user before the prompt.

# .bash_aliases
This file is sourced by .bashrc and holds all aliases for the shell. Aliases are command shortcuts set by the user. The format for an alias is simple:
```bash
alias shortcut='command --options'
```

# .exports
This file is also sourced by .bashrc and holds various environment variable to be set by the user.

# .gitconfig
This file holds settings for git. Set your git username and email address as well as other git settings.

# bin/mybey
This file is sourced by .bashrc to show some nice system info before a greeting in your shell.

# INSTALL
WARNING: This file WILL OVERWRITE any of these files in your home directory when ran. Please read this script and backup your files before usage.

# README.md
This file is the file you are reading!


# Extra bin script Files/Commands

##Tor
start script witch starts tor.

##clsetor
this script closes an active tor connection

##exicute 
Got tired of running the exicute 
command every time i wanted a file 
exicutable. so yup. I made one.

##chrt
This script is to run a
connection routing table on your active network

##openports
Get info about remote host ports and aviod Network Administrator detection. 

##traceroute
This script is to run a trace ip address connection to you.

##iptrace
find geographical location of any ip address.

How to run this script-
1. put in bin dir.
2. enter line "iptrace (ipaddress to track)"

##ipscan
This script is meant to report pingable ip address that are not supposed to be active. 
If active then will display outcome

##whoison
This script runs and checks for all active ips on a network then adds the list to a file called ips.txt in 
the user dir.

##mybey
This Script is ran when a cli interface is opened displaying the technical aspects of users device.

##sshfsmount
This script line connects you to a successful set up of a ssh server. Use this code for all 
machines you want to connect to the ssh share with sshfs. make sure to pay attention to where your share is and where you want it.. 
It will create dir if it does not find it.

##command to make alais in cli
mkalias <name> "<command>"

example - Example: mkalias rm "rm -i"

# Alias commands added

1.Update
2.Upgrade
3.autoclean
4.close
5.open
6.install
7.bios

#Other alias commands

1.Git Commands
2.ssh commands
ls commands
3.package management commands
4.safety commands - basic commands shortened
5.Privileged access commands

#Message from Me.

If you are having issues with commands not functioning on your system please feel to let me know.

Contact me @ htmlgifted1@gmail.com
