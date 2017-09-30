#!/bin/bash
set -e

if ! [ -e index.php ]
then
	echo >&2 "Grav not found in $(pwd) - copying now..."
	if [ "$(ls -A)" ]; then
		echo >&2 "WARNING: $(pwd) is not empty - press Ctrl+C now if this is an error!"
		( set -x; ls -A; sleep 10 )
	fi
	cp -R /usr/src/grav-admin/* /var/www/html
	cp /var/www/html/webserver-configs/htaccess.txt /var/www/html/.htaccess
	chown -R www-data:www-data /var/www/html
else
	echo >&2 "Grav found in $(pwd)"
fi

echo >&2 "Installation in progress..."
chown -R www-data:www-data /var/www/html

echo >&2 "All done"

exec "$@"
