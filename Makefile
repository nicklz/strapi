include .env

.PHONY: install start restart stop reset destroy

default: start

install:
	@echo "-----------------INSTALL----------------------"
	 . ${HOME}/.nvm/nvm.sh && nvm use && node -v  && cd app && yarn && cd ..
	docker-compose up -d
	@echo "Install complete please visit http://localhost:1337/"
start:
	@echo "-----------------START----------------------"
	docker-compose up -d
	@echo "http://localhost:1337/"

stop:
	@echo "-----------------STOP----------------------"
	docker-compose down
restart:
	@echo "-----------------RESTART----------------------"
	docker-compose down
	docker-compose up -d
