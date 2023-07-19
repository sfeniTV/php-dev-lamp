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
