#!/bin/bash
# Download WordPress core files (if not already present)
if [ ! -f wp-settings.php ]; then
    wp core download --allow-root
fi

# Create wp-config.php using environment variables
wp config create \
    --dbname=$WORDPRESS_DB_NAME \
    --dbuser=$WORDPRESS_DB_USER \
    --dbpass=$WORDPRESS_DB_PASSWORD \
    --dbhost=$WORDPRESS_DB_HOST \
    --allow-root \
    --force