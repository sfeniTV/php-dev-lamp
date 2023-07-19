.PHONY: start build stop start-background logs

start:
	docker-compose up

build:
	docker-compose up --build

stop:
	docker-compose down

start-background:
	docker-compose up -d

logs:
	docker-compose logs

shell:
	docker-compose exec php bash

composer-install:
	docker-compose exec php composer install

composer-update:
	docker-compose exec php composer update
