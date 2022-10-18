#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: keep an eye out for a different '--no-quarantine' solution.
# Currently you cannot do a 'brew bundle --no-quarantine' as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
#

brew bundle --verbose 