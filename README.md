# ANSIBLE PLAYBOOK QA

This project will install the most dependencies you use in your QA life.

Compatible with:
- Archlinux
- Ubuntu
- macOS

## ARCHLINUX
If your system are a ARCHLINUX only execute the command
```shell
sh ./install-ansible-archlinux.sh
```

After the script execution you have to reboot your system to apply the changes made.

## UBUNTU
If your system are a UBUNTU only execute the command

```shell
sh ./install-ansible-ubuntu.sh
```
Problaby the terminal ask for you sudo password
this will install ansible in ubuntu distro

and use the next command

```shell
ansible-playbook install-ubuntu-qa-dependencies.yml --ask-become-pass
```

e digite sua senha de `sudo`

## MACOSx
If your system are a MacOSX only execute the command

```shell
sh ./install-ansible-macos.sh
```
Problaby the terminal ask for you sudo password
this will install ansible in ubuntu distro

and use the next command

```shell
ansible-playbook install-macOS-qa-dependencies.yml --ask-become-pass
```

e digite sua senha de `sudo`


### Aplicações instaladas.

- go
- docker
- Docker-compose
- Prituln
- circleci (validate)
- zsh
- node(nvm)
- Java
- .dotnet
- pyenv
- VSCode
- Keybase
- Slack

## Testing
If you are making changes in the playbooks or are creating new ones, you probably would like to test these modifications.

For this you must have [Virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads) and [Vagrant](https://www.vagrantup.com/downloads) installed

With Virtualbox and Vagrant installed use the following commands:
- Start VM
```shell
vagrant up <MACHINE>
```
Example: `vagrant up ubuntu`

- Connect via ssh
```shell
vagrant ssh <MACHINE>
```
Example: `vagrant ssh ubuntu`

- Remove VM
```shell
vagrant destroy <MACHINE> -f
```
Example: `vagrant destroy ubuntu -f`

- The password for the user vagrant is `vagrant`

- After connect via ssh you can access the folder `/vagrant` where the scripts and playbooks are located.

```shell
cd /vagrant
ls -l
-rw-r--r-- 1 vagrant vagrant 2205 Aug 29 00:00 README.md
-rw-r--r-- 1 vagrant vagrant  336 Aug 28 23:51 Vagrantfile
-rwxrwxrwx 1 vagrant vagrant  564 Aug 28 23:22 install-ansible-archlinux.sh
-rw-r--r-- 1 vagrant vagrant  477 Aug 28 00:08 install-ansible-macos.sh
-rw-r--r-- 1 vagrant vagrant  190 Aug 28 23:08 install-ansible-ubuntu.sh
-rwxrwxrwx 1 vagrant vagrant 3786 Aug 25 22:50 install-archlinux-qa-dependencies.yml
-rw-r--r-- 1 vagrant vagrant 2200 Aug 28 00:08 install-macOS-qa-dependencies.yml
-rw-r--r-- 1 vagrant vagrant 5738 Aug 28 23:08 install-ubuntu-qa-dependencies.yml
```
#### Vagrantfile available machines
- archlinux
- ubuntu

#### Vagrantfile
Vagrantfile is configured for use Virtualbox as virtualization provider, 'cause this Virtualbox must be installed to work.

If any modification was made in the Vagrantfile, you can execute `vagrant reload` to apply the new configuration.
