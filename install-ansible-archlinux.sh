#!/bin/sh
echo "=== Install Ansible ==="
sudo pacman -Sy --noconfirm ansible

echo "=== Install ansible galaxy community general ==="
ansible-galaxy collection install community.general

echo "=== Install ansible galaxy AUR role ==="
ansible-galaxy install kewlfft.aur

echo "=== Running ansible ==="
ansible-playbook install-archlinux-qa-dependencies.yml --ask-become-pass

echo "=== Change the default shell for zsh ==="
if [ $SHELL != '/usr/bin/zsh' ]
then
  chsh -s /bin/zsh
fi

echo "=== Clean downloaded files"
rm -rf paru/ nvm_install.sh ohmyzsh_install.sh
