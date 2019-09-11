#!/bin/sh

#Install JetBrain ToolBox 
mkdir /tmp/joelj/
mkdir /tmp/Download_Install/
chmod 777 /tmp/Download_Install/ /tmp/joelj/
cd /tmp/Download_Install/ 
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.15.5666.tar.gz
sudo tar -xzf jetbrains-toolbox-*.tar.gz -C .

#Install pycharm
sudo snap install pycharm-community --classic

#install python3 & PIP 
sudo apt-get install python3 python3-pip



#install Django
pip3 install Django
django-admin --version
#sudo apt install python3-django
pip install Django==2.2.3

#Get the latest development version
git clone https://github.com/django/django.git

echo $python3 --version
#virtualenv or pyvenv
