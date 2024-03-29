.PHONY: start build stop start-background logs shell composer-install composer-update fix-permissions install-symfony install-typo3 install-wordpress

start:
	docker compose up

build:
	docker compose up --build

stop:
	docker compose down

start-background:
	docker compose up -d

logs:
	docker compose logs

shell:
	docker compose exec php bash

composer-install:
	docker compose exec php composer install

composer-update:
	docker compose exec php composer update

install-symfony: cleanup-app install-app-symfony
install-typo3: cleanup-app install-app-typo3
install-wordpress: cleanup-app install-app-wordpress

cleanup-app:
	docker compose exec php bash -c "rm -Rf /var/www/html/public"
	docker compose exec php bash -c "rm -Rf /var/www/html/src"
	docker compose exec php bash -c "rm -Rf /var/www/html/vendor"
	docker compose exec php bash -c "rm -f /var/www/html/composer.json"
	docker compose exec php bash -c "rm -f /var/www/html/composer.lock"
	docker compose exec php bash -c "rm -f /var/www/html/.gitignore"

install-app-symfony:
	docker compose exec php composer create-project symfony/skeleton /var/www/html/symfony-app  --no-interaction
	docker compose exec php bash -c "mv -f /var/www/html/symfony-app/public /var/www/html/public"
	docker compose exec php bash -c "mv /var/www/html/symfony-app/* /var/www/html/"
	docker compose exec php bash -c "mv /var/www/html/symfony-app/.* /var/www/html/"
	docker compose exec php bash -c "rm -Rf /var/www/html/symfony-app/"

install-app-typo3:
	docker compose exec php composer create-project typo3/cms-base-distribution /var/www/html/typo3-app "^12"
	docker compose exec php bash -c "mv -f /var/www/html/typo3-app/public /var/www/html/public"
	docker compose exec php bash -c "mv /var/www/html/typo3-app/* /var/www/html/"
	docker compose exec php bash -c "mv /var/www/html/typo3-app/.* /var/www/html/"
	docker compose exec php bash -c "rm -Rf /var/www/html/typo3-app/"
	docker compose exec php bash -c "touch /var/www/html/public/FIRST_INSTALL"

install-app-wordpress:
	docker compose exec php curl https://wordpress.org/latest.tar.gz --output wordpress.tgz
	docker compose exec php tar xzf wordpress.tgz
	docker compose exec php rm -f wordpress.tgz public/index.php
	docker compose exec php bash -c "mv wordpress public"
