configs
=======

Bash config files

INSTALLATION
```bash
git clone https://github.com/htmlgifted/configs.git && cd configs && git checkout ubuntu && ./INSTALL
```
<<<<<<< HEAD
### About This Read Me.###
This readme is to explain a few of the perks of this file combo. 

###  Whats In these files ###
In this set of config files you will find-
#Files
1. bash_aliases  
2. bashrc 
3. bash_profile 
4. exports 
5. gitconfig 
6. install 
7. This readme 
8. Dependancies

#Direcotories
1. .bin 
2. .git 

#Directories made
1. bin located at /home/user/bin 

### How to use bash aliases ###
Using bash aliases, witch make it a breaze to do long compicated commands now sudo 
apt-get install can be done with an alias = install 'packagename' . if you want to see all aliases after installing the config files.... 
in terminal type  just a letter -   a    so it would look like=" $a "  . This alias is set to show you a full list of aliases that you can use for everyday usage... 

### Bashrc file ###
This file creats and monitors a exucutable dir call bin in your /home/user directory.... Where you can add excutable shell scripts and more. 

### exports file ###
This file is to help manage visual settings for your setup.

### gitconfig file ### 
This file is to help with the new script install...

### .git directory ###
This is a dir for setting speacial github commands as aliases. please consult your alias list by typing an a in the prompt and hiting enter....or consult how to use bash aliases in this read me...
=======

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
>>>>>>> upstream/ubuntu


Dependancies needed to run some commannds in this setup.
1.
2.
3.
4.
5.
6.
7.
8.
9.
10.

Thanks for checking it out and don't forget to let us know what you think...
