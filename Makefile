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

install-symfony:
	docker-compose exec php composer create-project symfony/skeleton /var/www/html/app  --no-interaction
	docker-compose exec php bash -c "mv -f /var/www/html/app/public/index.php /var/www/html/public/index.php && rm -Rf /var/www/html/app/public/"
	docker-compose exec php bash -c "mv /var/www/html/app/* /var/www/html/"
	docker-compose exec php bash -c "mv /var/www/html/app/.env /var/www/html/.env"
	docker-compose exec php bash -c "mv /var/www/html/app/.gitignore /var/www/html/.gitignore"
	docker-compose exec php bash -c "rm -Rf /var/www/html/app/"
	docker-compose exec php bash -c "chmod a+w -R ."
