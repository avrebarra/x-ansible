# x-ansible
A sample virtual environment to experiment with ansible automation

## Required
To test out this X requires:
- docker
- docker-compose

## Usage
- Check out `Makefile` to see all commands. Basically to setup everything you just do:
```sh
$ make build # to build everything, esp virtual host's image
$ make start # to spin virtual hosts and setup ansible server
```
- You will get one ansible virtual-control-server and two ubuntu virtual-servers.
- Then you need to pair virtual servers to ctlserver ssh:
```sh
$ make ssh-ansible # to ssh to ansible server and experiment on ansible commands
# generate keys
$ ssh-keygen # just follow to generate ctlserver's ssh keys

# register id to hosts
$ ssh-copy-id test@vhost1
$ ssh-copy-id test@vhost2

# test ansible connections
$ ansible all -m ping
```

- This x also included several basic config en playbooks. Very basic tho. Check `./ansible/playbooks` dir.

## Cheatsheets
### Ansible
```sh
$ ansible all -m ping
$ ansible-playbook playbooks/host_init.yml
```