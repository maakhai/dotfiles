# Commands aliases
alias instalar='sudo apt-get install'
alias remover='sudo apt-get remove'
alias atualizar='sudo apt-get upgrade'
alias limpar='sudo apt-get autoremove'
alias py='python3'

# Directories shortcuts
alias home='cd ~'
alias root='cd /'

# Typos
alias cd..='cd ..'

# Customization
# custom bash made in https://scriptim.github.io/bash-prompt-generator/
PS1='\[\e[0;1;38;5;203m\]\u\[\e[0;1;2;38;5;203m\]@\[\e[0;1;38;5;203m\]\h\[\e[0;38;5;209m\]: \[\e[0m\]\W\[\e[0m\]$ \[\e[0m\]'
alias ls='ls --color=always'
LS_COLORS=$LS_COLORS:'di=1;36:'; export LS_COLORS

# Extract files
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xvjf "$1" ;;
            *.tar.gz) tar xvzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) unrar x "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xvf "$1" ;;
            *.tbz2) tar xvjf "$1" ;;
            *.tgz) tar xvzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *) echo "Don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

