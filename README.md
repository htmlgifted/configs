configs
=======

Bash config files

INSTALLATION
```bash
git clone https://github.com/gld1982ltd/configs.git && cd configs && git checkout ubuntu && ./INSTALL
```

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
