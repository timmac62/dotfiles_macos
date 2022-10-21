#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew does not exist, continueing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi



# TODO: keep an eye out for a different '--no-quarantine' solution.
# Currently you cannot do a 'brew bundle --no-quarantine' as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
#

brew bundle --verbose 