VAULT_PASS_FILE=vault_pass.txt

docker:
	ansible-playbook -i inventory.ini playbook.yml --tags docker --vault-password-file $(VAULT_PASS_FILE)

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --vault-password-file $(VAULT_PASS_FILE)

nginx:
	ansible-playbook -i inventory.ini playbook.yml --tags nginx --vault-password-file $(VAULT_PASS_FILE)