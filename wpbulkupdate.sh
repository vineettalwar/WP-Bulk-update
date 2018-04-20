# Please Read first the READ.md for instructions.

for directory in /var/www/*;
do cd "$directory" &&
	/usr/local/bin/wp core update;
	/usr/local/bin/wp plugin update --all;
	/usr/local/bin/wp theme update --all;
	/usr/local/bin/wp core language update;
	/usr/local/bin/wp transient delete --expired;
done
