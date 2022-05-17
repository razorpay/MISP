#!/bin/bash
sudo -H -u www-data git -C /var/www/MISP submodule update --progress --init --recursive
sudo -H -u www-data git -C /var/www/MISP submodule foreach --recursive git config core.filemode false
sudo -H -u www-data git -C /var/www/MISP config core.filemode false
cd /var/www/MISP/app 
php composer.phar update