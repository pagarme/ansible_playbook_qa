# ANSIBLE PLAYBOOK QA

This project will install the most dependencies you using in your QA life. 

only compatible with ubuntu right now

If your system are a UBUNTU only execute the command 

```
sh ./install-ansible-ubuntu.sh
```
Problaby the terminal ask for you sudo password
this will install ansible in ubuntu distro

and use the next command

```
ansible-playbook install-ubuntu-qa-dependencies.yml --ask-become-pass
```

e digite sua senha de `sudo`

### Aplicações instaladas.

- go
- docker
- Docker-compose
- Prituln
- circleci(validade)
- zsh
- node(nvm)
- Java
- .dotnet
- pyenv
- VSCode
- Keybase
- Slack