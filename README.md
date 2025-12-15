### Hexlet tests and linter status:

[![Actions Status](https://github.com/kkirilltarasenko/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/kkirilltarasenko/devops-for-developers-project-76/actions)

# DevOps Project 76

Check application: https://ktarasenko.online

This project contains Ansible playbooks and roles to deploy a Redmine application with Docker, Nginx, and Datadog monitoring.

## System Requirements

- Git
- Make
- Ansible (>=2.9)

## Clone the repository

```bash
git clone https://github.com/kkirilltarasenko/devops-for-developers-project-76.git
cd devops-for-developers-project-76
```

Create Ansible Vault Password File
Before running any playbooks, create a file vault_pass.txt with your Ansible Vault password:

```bash
echo '<your-vault-password>' > vault_pass.txt
```

Note: Replace <your-vault-password> with your actual Vault password. Keep this file secure.

Setup Servers

Install required dependencies and prepare servers:

Install docker

```bash
make docker
```

Setup nginx server

```bash
make nginx
```

Setup datadog monitoring service

```bash
make datadog
```

Deploy the Redmine Application

```bash
make deploy
```

This will run the Redmine role on all hosts defined in your inventory.
