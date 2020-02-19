# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/auferrari/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# LEFT_PROMPT
# ===========================================================
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery ram time newline dir_joined pyenv)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=''
# os_icon custom
POWERLEVEL9K_RUBY_ICON = '\uf651'
POWERLEVEL9K_PYTHON_FOREGROUND = '004'
POWERLEVEL9K_PYTHON_BACKGROUND = 'None'


POWERLEVEL9K_VCS_GIT_GITHUB_ICON = '\uf7a2'
# os icon
POWERLEVEL9K_OS_ICON_BACKGROUND='none'
POWERLEVEL9K_OS_ICON_FOREGROUND='004'

# battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='none'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='001'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='none'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='076'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='none'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='076'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='none'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='003'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=15
POWERLEVEL9K_BATTERY_VER:wBOSE=false
POWERLEVEL9K_BATTERY_STAGES='ÔïπÔï∫ÔïªÔïºÔïΩÔïæÔïæÔïøÔñÄÔñÅÔï∏'

# time
# POWERLEVEL9K_TIME_FORMAT="%D{%d.%m.%y %H:%M:%S}"
POWERLEVEL9K_TIME_ICON='\uf651'
POWERLEVEL9K_TIME_BACKGROUND='none'
POWERLEVEL9K_TIME_FOREGROUND='006'

# ram
POWERLEVEL9K_RAM_ICON='\ue266'
POWERLEVEL9K_RAM_BACKGROUND='none'
POWERLEVEL9K_RAM_FOREGROUND='006'

# dir
POWERLEVEL9K_SHORTEN_DELIMITER='Ôõó'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=7
# POWERLEVEL9K_SHORTEN_STRATEGY='truncate_to_first_and_last'

POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_FOLDER_ICON='\ue5ff'
POWERLEVEL9K_HOME_ICON='\uf015'
POWERLEVEL9K_HOME_SUB_ICON=''

POWERLEVEL9K_DIR_ETC_BACKGROUND='none'
POWERLEVEL9K_DIR_ETC_FOREGROUND='005'
POWERLEVEL9K_DIR_HOME_BACKGROUND='none'
POWERLEVEL9K_DIR_HOME_FOREGROUND='004'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='005'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='none'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='004'

# customization
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='ÓÉÜ'

# RIGHT_PROMP
# ===========================================================
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_WHITESPACE_BETWEEN_RIGHT_SEGMENTS=''

# vcs
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='076'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='none'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='005'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='none'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='003'

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

POWERLEVEL9K_MODE='nerdfont-complete'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 ##THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/{{user_name}}/.sdkman"
[[ -s "/Users/auferrari/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/{{user_name}}/.sdkman/bin/sdkman-init.sh"
 # Added by furycli:
export PATH="/Users/{{user_name}}/Library/Python/3.7/bin:$PATH"

# ==========================ALIAS COMMANDS===================================
#Alias for send notifications : 
#Use it in the next way : tn <title> <message>
terminalnotification() {terminal-notifier -title "$1" -message "$2";}
alias tn='terminalnotification'

# Alias to check the stile of a .py file . Must have balck installed
alias isStilish="balck --diff ./"

# Alias for git commands
alias ga="wntcommit && git add --all"
alias gc="wntcommit && git commit -m "
alias gp="git push"
alias gs="git status"
alias gpull="git pull"
alias gmaster="git checkout master"
alias ginit="git init"


# Alias for most use folders 
alias goDocs="cd /Users/{{useri_name}}/Documents/"
alias goDesk="cd /Users/{{user_name}}/Desktop/"
alias goProy="cd /Users/{{user_name}}/Documents/Proyects"
alias newProy="goProyects && mkdir "

# Alias for virtualenv commadns
alias pyenvList="pyenv virtualenvs"
alias nviminenv="pip install -U neovim" # install neovim inside a virtualenv

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

