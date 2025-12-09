install:
	ansible-playbook -i inventory.ini playbook.yml --tags install

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy