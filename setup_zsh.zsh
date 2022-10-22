#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells' ; then
  echo "/opt/homebrew/bin/zsh already exists in /etc/shells"
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

# echo "Enter superuser (sudo) password to edit /etc/shells"
# echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null

if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo '$SHELL is already /opt/homebrew/bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/opt/homebrew/bin/zsh'
fi

if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /opt/homebrew/bin/zsh'
else
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  # looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead
  # sudo ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
fi
