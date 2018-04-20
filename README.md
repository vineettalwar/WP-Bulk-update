# WP Bulk Update

## About

*  This script is useful, when you need to bulk update all the WordPress installations on a server.
*  It can be n number of installations, considering their respected document root exists in one root directory.

# WARNING:

* If you are running a patched theme/plugin or own version of standard theme /plugin , you will loose the patches.
* Be really careful, while executing this script.
* It is highly recommended to take all the backups before updating everything at once.

## What can I do with it ?

* Update WordPress core,
* Update all the repository themes installed
* Update All the repository plugins installed
* Update translations
* Delete expired transient cache

## Dependency
* You need WP-CLI installed
* Web: https://wp-cli.org
* You can only update WordPress installations.

## Assumptions:
* You have installed WP-CLI using the instructions from https://wp-cli.org
* Your WP-CLI is installed in /usr/local/bin/
* In case you are running WP-CLI locally from a directory, make sure to change the path before wp in the script
* Make sure to replace document root from `/var/www/*` with what ever document root of your all the WordPress websites are.
* In case you keep your WordPress installations one or two level down change the path accordingly.
* For instance, `/var/www/html/*/htdocs;`

## Installation:
* Logon to your server via ssh
* upload the script on your home directory.
* change file permissions to be executable by your user group atleast `chmod g+x wpbulkupdate.sh`

## Use cases

###  Manual Execution:

* Run `~/wpbulkupdate.sh`

### Using Cronjob

* Lets say you wanna udpate everything via a cronjob, which executes every night at 1am.
* `crontab -e` and Add following job.
`0 1 * * *  ~/wpbulkupdate.sh`

* You can use https://crontab.guru/ to learn more about cron schedule expressions.

