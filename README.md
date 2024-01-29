# PHP Dev with Classic LAMP Stack

PHP development environment with Linux, Apache, mySQL and PHP (LAMP) to use as a quick-start template. Shipped with the db-admin tool called phpMyAdmin.

Makefile provides you some cool short commands to work much faster. Also there are installation commands for well known PHP frameworks. Have a look at it, very nice ;-)

`make start` brings everything up and running.

`make shell` opens up a shell inside the PHP container. There you can run `composer` for example.

Start coding inside src/ and only move things to public/ if you really need them public accessible. Think about that when you deploy you app at a hosting provider. Configure your webroot /documentroot to this public/ folder only!

## system requirements

* docker
* docker-compose-plugin
* make
* some IDE ;-)

## Versions

Apache 2.4

PHP 8.2

MySQL 8

phpMyAdmin 5

### PHP Extensions

[PHP Modules]
Core
ctype
curl
date
dom
fileinfo
filter
ftp
gd
hash
iconv
json
libxml
mbstring
memcached
mysqli
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
random
readline
redis
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xdebug
xml
xmlreader
xmlwriter
zlib

[Zend Modules]
Xdebug

## URLs

### Webroot / DocumentRoot

Directory: app/public/

http://localhost:8080

### phpMyAdmin / Database Administration
http://localhost:8088

### Database credentials

host: database

user: root

password: 123

database name for your app not defined / created yet. Good luck ;-)

## Framework Installations

*WARNING* Commands will overwrite files and directories in app/public/ So just use it as jump-start at the beginning of a project!

Symfony: `make install-symfony`

TYPO3: `make install-typo3` and open http://localhost:8080/ to start installation wizard

Wordpress: `make install-wordpress` and open http://localhost:8080/ to start installation wizard

HAPPY CODING!!!

## Customized PHP Image

If you change the php image and create your own Dockerfile. Please configure it correctly in docker-compose.yaml, run `make build` instead to build the docker image again with your changes.

You can use the image from docker-compose.yaml as your FROM inside the Dockerfile. So you don't need to start from scratch.