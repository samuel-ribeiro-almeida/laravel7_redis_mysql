#!/bin/bash

composer install
php artisan config:cache
php artisan key:generate
php artisan config:cache
php artisan migrate
php artisan config:cache
php-fpm