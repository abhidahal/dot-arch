alias c='clear'
alias ":q"="exit"
alias v='nvim'
alias vim='nvim'
alias ll='ls -l --color=auto --group-directories-first'
alias la='ls -al --color=auto --group-directories-first'
alias vv='nvim .'
alias exp='explorer.exe .'
alias  l='exa -l  --icons'
alias ls='ls --hyperlink=auto'
alias ld='exa -lD --icons'

alias in='sudo pacman -S' # install package
alias un='sudo pacman -Rns' # uninstall package
alias up='sudo pacman -Syu' # update system/package/aur
alias pl='pacman -Qs' # list installed package
alias pa='pacman -Ss' # list availabe package
alias pc='sudo pacman -Sc' # remove unused cache
alias po='pacman -Qtdq | sudo pacman -Rns -' # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -
alias code='code --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto'  # gui code editor
alias dolph='dolphin . &' # gui file manager
