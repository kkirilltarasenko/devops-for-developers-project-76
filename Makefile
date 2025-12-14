docker:
	ansible-playbook -i inventory.ini playbook.yml --tags docker --ask-vault-pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass

nginx:
	ansible-playbook -i inventory.ini playbook.yml --tags nginx --ask-vault-pass

setup:
	ansible-playbook -i inventory.ini playbook.yml --tags nginx --ask-vault-pass
	ansible-playbook -i inventory.ini playbook.yml --tags docker --ask-vault-pass
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass