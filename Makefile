include .env

.PHONY: install start restart stop reset destroy

default: start

install:
	@echo "-----------------INSTALL----------------------"
	sudo docker-compose up -d
	@echo "Install complete please visit http://localhost:1337/"
start:
	@echo "-----------------START----------------------"
	sudo docker-compose up -d
	@echo "http://localhost:1337/"
