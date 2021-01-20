#!/bin/bash
  
echo ">>> Configuration d'Nginx"  
cd /etc/nginx/sites-available/

sudo chmod 644 default

sudo cp /vagrant/default /etc/nginx/sites-available/default

cd ..

# cd sites-available

# sudo rm –rf /var/www/html
# sudo ln –fs /vagrant /var/www/html

sudo service nginx restart


echo "end to configure nginx.."
