VAULT_PASS_FILE = vault_pass.txt
INVENTORY = inventory.ini
PLAYBOOK = playbook.yml
ALL_VARS = ./group_vars/all/vault.yml
WEBSERVERS_VARS = ./group_vars/webservers/vault.yml

ANSIBLE = ansible-playbook -i $(INVENTORY) $(PLAYBOOK) \
	--vault-password-file $(VAULT_PASS_FILE)

.PHONY: deploy docker datadog all view-vault encrypt-vault decrypt-vault

all:
	$(ANSIBLE)

deploy:
	$(ANSIBLE) --tags deploy

docker:
	$(ANSIBLE) --tags docker

datadog:
	$(ANSIBLE) --tags datadog

view-vault:
	ansible-vault view $(WEBSERVERS_VARS) --vault-password-file $(VAULT_PASS_FILE) 

encrypt-vault:
	ansible-vault encrypt $(WEBSERVERS_VARS) --vault-password-file $(VAULT_PASS_FILE) 

decrypt-vault:
	ansible-vault decrypt $(WEBSERVERS_VARS) --vault-password-file $(VAULT_PASS_FILE) 