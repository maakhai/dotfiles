# Commands aliases
alias dpkg='sudo dpkg'
alias apt='sudo nala'
alias py='python3'
alias neofetch='neofetch --backend kitty --source .config/neofetch/images/image.png'
alias icat='kitten icat'
alias cat='batcat'
alias flatinstall='flatpak install flathub -y'

# Directories shortcuts
alias home='cd ~'
alias root='cd /'

# Typos
alias cd..='cd ..'

# Customization
# custom bash made in https://scriptim.github.io/bash-prompt-generator/
export PS1='\[\e[38;5;203;1m\]\u\[\e[0m\] \w \[\e[38;5;203m\]>\[\e[0m\] '

alias ls='ls --color=always'
LS_COLORS=$LS_COLORS:'di=1;33:'; export LS_COLORS

# Extract files
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xvjf "$1" ;;
            *.tar.gz) tar xvzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) unrar x "$1" ;;
            *.xz) tar -xf "$1";;
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

command_not_found_handle() {
   local trycmd=$(echo "$1" | tr '[:upper:]' '[:lower:]')
   if command -v "$trycmd" &> /dev/null; then
       echo "Corrigindo '$1' pra '$trycmd'"
       "$trycmd" "${@:2}"
   else
       echo "bash: $1: command not found"
   fi
}
