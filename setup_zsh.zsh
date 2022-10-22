#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# installation unnecessary; it's in the Brewfile.

echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells'

chsh -s '/opt/homebrew/bin/zsh'