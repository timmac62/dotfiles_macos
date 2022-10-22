echo 'Hello from .zshrc'

# Set Variables
export NULLCMD=bat
export HOMEBREW_CASK_OPTS="--no-quarantine"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH Options

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias trail='<<<${(F)path}'
alias man=batman
alias bbd='brew bundle dump --force --describe'
alias rm=trash

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ... And Other Surprises
