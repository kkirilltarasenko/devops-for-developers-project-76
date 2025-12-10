install:
	ansible-playbook -i inventory.ini playbook.yml --tags install --ask-vault-pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass