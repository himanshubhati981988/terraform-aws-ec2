#!/bin/bash
 #sudo  wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
 #sudo  rpm -ivh epel-release-7-9.noarch.rpm
sudo apt-get update -y
sudo apt-get install -y httpd-2.2.26 php56 php56-mysqlnd mysql
sudo service httpd restart
sudo chkconfig httpd on
sudo /bin/chmod -R 775 /var/www/html/
sudo /bin/echo "<hmtl> Hi this is WEB </html>" > /var/www/html/index.html
#sudo /bin/echo "<?php phpinfo(); ?>" > /var/www/html/info.php
