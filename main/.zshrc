
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/strike/.oh-my-zsh"
alias tmux="TERM=screen-256color-bce tmux"


source ~/.oh-my-zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-prompt
antigen bundle z 
antigen bundle pip
antigen bundle kubectl 
antigen bundle git-prompt
antigen bundle vi-mode
antigen bundle docker
antigen bundle docker-compose

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bureau 

# Tell Antigen that you're done.
antigen apply


#Personal wiki and documentation
alias wiki="cd ~/pabpereza/content/es/docs && vim -c \"NERDTree\""
alias docs="cd ~/doc/ && vim -c \"NERDTree\""
alias blog="cd ~/pabpereza/content/es/blog && vim -c \"NERDTree\""
alias save="git add --all && git commit -a && git push"

alias vim="nvim"
alias v="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Golang
export PATH=$PATH:/usr/local/go/bin
