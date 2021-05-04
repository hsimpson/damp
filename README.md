# DAMP Docker Apache MariaDB PHP

See: <https://dockerwebdev.com/tutorials/docker-php-development/> to create root CA and the ssl cert:

* Install mkcert
* mkcert -Install
* mkcert localhost 127.0.0.1 ::1

Run:

docker-compose build && docker-compose up
