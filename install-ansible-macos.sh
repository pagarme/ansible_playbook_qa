#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
brew install python
sudo -H pip3 install ansible
ansible-galaxy collection install community.general
