#!/bin/bash


# Run ansible playbook
ansible-playbook playbook.yaml \
    -e ansible_ssh_private_key_file=~/Downloads/dev-server.pem \
    -e ENVIRONMENT=dev \
    -e DOCKER_IMAGE_TAG=latest \
    --vault-password-file .vault_password_dev

