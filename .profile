# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash if ~/.bash_profile or ~/.bash_login exists.

# If running bash, source .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

# Add user's private bin directories to PATH if they exist
for dir in "$HOME/bin" "$HOME/.local/bin" "$HOME/.scripts"; do
    [ -d "$dir" ] && PATH="$dir:$PATH"
done
