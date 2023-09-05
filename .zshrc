ZSH=/usr/share/oh-my-zsh/

 eval "$(starship init zsh)"

plugins=(git  jsontools history vi-mode z colorize)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.config/bash/.bash_aliases ]] || source ~/.config/bash/.bash_aliases
[[ ! -f ~/.config/bash/.bash_functions ]] || source ~/.config/bash/.bash_functions


#Display specs
#neofetch

#Display Pokemon
#pokemon-colorscripts --no-title -r 1,3,6

#Display gif
#kitten icat --align left ~/.config/neofetch/pochita.gif

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
