VAULT_PASS_FILE = vault_pass.txt
INVENTORY = inventory.ini
PLAYBOOK = playbook.yml

ANSIBLE = ansible-playbook -i $(INVENTORY) $(PLAYBOOK) \
	--vault-password-file $(VAULT_PASS_FILE)

.PHONY: deploy docker datadog all

all:
	$(ANSIBLE)

deploy:
	$(ANSIBLE) --tags deploy

docker:
	$(ANSIBLE) --tags docker

datadog:
	$(ANSIBLE) --tags datadog