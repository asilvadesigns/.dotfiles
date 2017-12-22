# If you come from bash you might have to change your $PATH.
#
#
export PATH=~/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/aas/.vimpkg/bin:/Users/aas/depot_tools:/usr/local/bin/npm:/usr/local/go/bin:/Users/aas/go/bin:/usr/.cargo/bin:/Users/aas/.cargo/bin:/Users/aas/Scripts:/Users/aas/Desktop/GoogleTest
export PATH=/Applications/MAMP/bin/php/php7.0.15/bin:$PATH
export PATH=/Desktop/Github/fish-shell:$PATH

# export
#export TERM=screen-256color-italic

# Path to your oh-my-zsh installation.
export ZSH=/Users/aas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="spaceship"
#SPACESHIP_PROMPT_SYMBOL=""


POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" "
# ~keep the powerbar up top
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# ~nothing on the right
POWERLEVEL9K_DISABLE_RPROMPT=true
# ~just show the directory and git
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs node_version)
# ~no arrows
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
# ~directory length
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# ~directory colors
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="015"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="015"
# ~git colors
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
# ~git icons
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_BRANCH_ICON=' '
# ~git icon - changes to existing file not added
POWERLEVEL9K_VCS_UNSTAGED_ICON=''
# ~git icon - changes to existing file not commited
POWERLEVEL9K_VCS_STAGED_ICON=''
# ~git icon for new file
POWERLEVEL9K_VCS_UNTRACKED_ICON=''
# ~node colors
POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
POWERLEVEL9K_NODE_VERSION_FOREGROUND="green"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#   My Aliases
source $HOME/.myalias.sh

#   My Abbreviations
source $HOME/.myabbrev.sh

#   Wordpress Completions
#source $HOME/.config/wp/wp-completion.bash

#   ZSH
ZSH_AUTOSUGGEST_USE_ASYNC=true

#   RUST
source $HOME/.cargo/env

#   FZF
export FZF_DEFAULT_OPTS='
  --color=bg+:#20242b,bg:#20242b
  --color=hl+:#61afef,hl:#61afef
  --color=fg+:#abb2bf,fg:#636d83
  --color=info:#98c379,prompt:#98c379,spinner:#98c379,pointer:#e06c75,marker:#61afef
  --no-height
'
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

#   NVM
export NVM_DIR="/Users/aas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#   added by Anaconda2 4.3.1 installer
#   export PATH="/Users/aas/anaconda/bin:$PATH"

#   Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source $HOME/.rvm/scripts/rvm

