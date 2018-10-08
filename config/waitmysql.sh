#!/bin/bash


while !(mysqladmin ping --host=$DB_HOST -utask -psecret)
do
    sleep 1
    echo "Wait for mySQL ..."
done
echo "MySql ready"

sudo docker-compose exec backend php artisan key:generate
sudo docker-compose exec backend php artisan migrate:refresh --seed --force
sudo docker-compose exec backend php artisan migrate --seed --force