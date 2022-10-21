echo 'Hello from .zshrc'

# Set Variables

# Change ZSH Options

# Create Aliases
alias bbd='brew bundle dump --force --describe'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias man=batman

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ... And Other Surprises
