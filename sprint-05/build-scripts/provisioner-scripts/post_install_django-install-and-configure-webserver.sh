#!/bin/bash

# Script to configure Django automatically out of the box
# Set the etc hosts values
echo "$WEBSERVERIP     frontend    frontend.class.edu"  | sudo tee -a /etc/hosts
echo "$DATABASESERVERIP    backend    backend.class.edu"    | sudo tee -a /etc/hosts

##############################################################################################
# Install Django pre-reqs
##############################################################################################
sudo apt-get install -y libexpat1 ssl-cert python3-dev python3-pip python3-setuptools

##############################################################################################
# Install Django mysqlclient library pre-reqs
##############################################################################################
sudo apt-get install -y default-libmysqlclient-dev build-essential
python3 -m pip install mysqlclient

##############################################################################################
# Inject all environment variables into a .my.cnf file
# Here we can construct the .my.cnf file and append the value to the .my.cnf file we will 
# create in the home directory
##############################################################################################
echo "[client]" >> /home/vagrant/.my.cnf
echo "database = $DATABASENAME" >> /home/vagrant/.my.cnf
echo "user = worker" >> /home/vagrant/.my.cnf
echo "password = $DBPASS" >> /home/vagrant/.my.cnf
echo "default-character-set = utf8" >> /home/vagrant/.my.cnf

##############################################################################################
# Install Django
##############################################################################################
python3 -m pip install django django-admin django-common

###########################################################################
# Django Backup and restore program
########################################################################### 
#https://pypi.org/project/django-dbbackup/
python3 -m pip install django-dbbackup

python3 -m pip install pillow

##############################################################################################
# Create Django project
##############################################################################################
django-admin startproject mysite

##############################################################################################
# Create the actual Django app
##############################################################################################
sudo mkdir /home/vagrant/mysite/project
django-admin startapp project /home/vagrant/mysite/project

##############################################################################################
# CHANGE THE VALUES ~/2021-team-sample TO YOUR TEAM REPO AND ADJUST THE PATH ACCORDINGLY     #
# Adjust the paths below in line 35-37, and 44 and 46                                        #
##############################################################################################
sudo chown -R vagrant:vagrant ~/2021-team06r

sudo cp -v /home/vagrant/2021-team06r/sprint-05/code/django/mysite/settings.py /home/vagrant/mysite/mysite/

##############################################################################################
# Using sed to replace the blank settings value with the secret key
##############################################################################################
echo "Replacing default secret key: \n"
sed -i "s/SECRET_KEY = \'\'/SECRET_KEY = '$DJANGOSECRETKEY\'/g" /home/vagrant/2021-team06r/sprint-05/code/django/mysite/settings.py
sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = [\'$WEBSERVERIP'\]/g" /home/vagrant/2021-team06r/sprint-05/code/django/mysite/settings.py
sed -i "s/'HOST': '',/'HOST': \'$DATABASESERVERIP\',/g" /home/vagrant/2021-team06r/sprint-05/code/django/mysite/settings.py

##############################################################################################
# Overwriting default files from sed commands
##############################################################################################
cp -v /home/vagrant/2021-team06r/sprint-05/code/django/mysite/settings.py /home/vagrant/mysite/mysite
sudo chown -R vagrant:vagrant mysite

##############################################################################################
# Create super user account from the ENV variables we passed in
##############################################################################################
python3 /home/vagrant/mysite/manage.py createsuperuser --noinput

##############################################################################################
# Copy folders
##############################################################################################
sudo cp -v -r ~/2021-team06r/sprint-05/code/django/mysite /home/vagrant/mysite/mysite
sudo cp -v -r ~/2021-team06r/sprint-05/code/django/project /home/vagrant/mysite/project
sudo cp -v -r ~/2021-team06r/sprint-05/code/django/users /home/vagrant/mysite/users
sudo cp -v -r ~/2021-team06r/sprint-05/code/django/media /home/vagrant/mysite/media

python3 /home/vagrant/mysite/manage.py makemigrations
python3 /home/vagrant/mysite/manage.py migrate

##############################################################################################
# Copy systemd start script to runserver at boot
##############################################################################################
sudo cp -v ~/2021-team06r/sprint-05/code/django/django-server.service /lib/systemd/system/
sudo systemctl enable django-server.service
sudo systemctl start django-server.service

##############################################################################################
# Set firewall section
# We will need to enable to port and the IP to receive a connection from for our system
##############################################################################################
# https://serverfault.com/questions/809643/how-do-i-use-ufw-to-open-ports-on-ipv4-only
# https://serverfault.com/questions/790143/ufw-enable-requires-y-prompt-how-to-automate-with-bash-script
ufw --force enable
ufw allow 22
ufw allow 80
ufw allow 443
ufw allow 8000