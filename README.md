# x-ansible
A sample virtual environment to experiment with ansible automation

## Required
To test out this X requires:
- docker & docker-compose

## Usage
Check out `Makefile` to see all commands. Basically you just do:
```sh
$ make build # to build everything, esp virtual host's image
$ make start # to spin virtual hosts and setup ansible server
$ make ssh-ansible # to ssh to ansible server and experiment on ansible commands
```

This x also included several basic config en playbooks. Very basic tho.

## Cheatsheets
### Ansible
```sh
$ ansible all -m ping
$ ansible-playbook playbooks/host_init.yml
```