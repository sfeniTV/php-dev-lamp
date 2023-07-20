# PHP Dev with Classic LAMP Stack

PHP development environment with Linux, Apache, mySQL and PHP (LAMP) to use as a quick-start template. Shipped with the lilghtweight db-admin tool called Adminer.

Makefile provides you some cool short commands to work much faster. Have a look to it, very nice ;-)

`make start` brings everything up and running. If you change the php Dockerfile, run `make build` instead to build the docker image again with your changes.

`make shell` opens up a shell inside the PHP container. There you can run `composer` for example.

## Versions

Apache 2.4

PHP 8.2

MySQL 8

adminer 4

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

### Adminer / Database Administration
http://localhost:8088

### Database credentials

host: database

user: root

password: 123

database name for your app not defined / created yet. Good luck ;-)

## Framework Installations

Symfony: `make install-symfony`

HAPPY CODING!!!