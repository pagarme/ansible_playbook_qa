/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
brew install python
sudo pip install ansible --quiet
ansible-galaxy collection install community.general
