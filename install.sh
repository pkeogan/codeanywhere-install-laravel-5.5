sudo yum update
sudo yum install epel-release
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo yum --enablerepo=remi,remi-php71 install git httpd php php-common mysql mysql-server php-pecl-zip php-mysql php-pecl-memcache php-pecl-memcached php-gd php-mbstring php-mcrypt php-xml

sudo wget https://getcomposer.org/composer.phar
sudo chmod +x composer.phar
sudo mv composer.phar /usr/bin/composer

sudo sed -i 's/DocumentRoot\ "\/var\/www\/html"/DocumentRoot\ "\/home\/cabox\/workspace\/public"/g' /etc/httpd/conf/httpd.conf
chmod 777 /workspace/public -R

sudo service mysqld start
sudo service httpd start
sudo /sbin/chkconfig --levels 235 httpd on
sudo mysql_secure_installation
sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs
sudo yum install git


