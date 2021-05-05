# DAMP Docker Apache MariaDB PHP

See: <https://dockerwebdev.com/tutorials/docker-php-development/> to create root CA and the ssl cert:

Install mkcert (see: <https://github.com/FiloSottile/mkcert>)

Create the root CA (only once!):

```shell
mkcert -install
```

Create cert for localhost:

```shell
mkcert -cert-file ssl/cert.pem -key-file ssl/cert-key.pem localhost 127.0.0.1 ::1
```

Run:

```shell
docker-compose build && docker-compose up
```
