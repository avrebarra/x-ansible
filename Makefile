PROJECTNAME := x-ansible

# -------------------------------------------------
# -------------------------------------------------

## build: build things
build:
	@docker build -t ansible-vhost vhost.Dockerfile

## start: start suite
start:
	@docker-compose up -d

## stop: stop suite
stop:
	@docker-compose down --remove-orphans

## ssh-ansible: ansible
ssh-ansible:
	@docker exec -it x-ansible_ansible_1 /bin/sh

.PHONY: help
all: help
help: Makefile
	@echo
	@echo " Choose a command run with parameter options: "
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo
