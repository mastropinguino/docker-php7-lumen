# docker-php7-lumen
 A base docker image for building lumen/laravel webservices.

## Usage
Apache is configured with docroot at /var/www/html/public.
Is needed to mount php files in /var/www/html.

eg.
```
docker run -p 80:80 -b /local/path/api:/var/www/html mastropinguino/php7-lumen:1.1
```

