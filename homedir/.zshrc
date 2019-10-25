# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
eval $(thefuck --alias)

# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="jispwoso"
# export ZSH_THEME="powerlevel9k/powerlevel9k"
# export ZSH_THEME="agnoster"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

# colorcode 
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="false"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  docker
  docker-compose
  dirpersist 
  git 
  history 
  cp
  vscode
  tmux
  osx
  #vi-mode
  zsh_reload
  zsh-navigation-tools
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# source /usr/local/opt/nvm/nvm.sh

# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use &> /dev/null
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     nvm use default &> /dev/null
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
# fortune

# set alias here
alias clr='clear'
alias zshconfig='vim ~/.zshrc'



# commented out by conda initialize
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xiaoy/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xiaoy/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xiaoy/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xiaoy/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/maven@3.3/bin:$PATH"
