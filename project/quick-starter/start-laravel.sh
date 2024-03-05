#!/bin/sh

APP_NAME="example-app"

# Install Laravel
composer create-project laravel/laravel ../$APP_NAME

# Modify Nginx configuration
sed -i "s/\/var\/www\/html;/\/var\/www\/html\/$APP_NAME\/public;/g" /etc/nginx/nginx.conf

# Restart Nginx
systemctl restart nginx