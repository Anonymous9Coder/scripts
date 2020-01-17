!/bin/sh
#Install DevOps Tools
# The Following tools will be installed for DevOps - APT Repos

#Switch to SuperUser and Update the system
sudo su -
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get --fix-broken install -y #Fixes Broken Packages

mkdir /tmp/downloads
chmod 777 /tmp/downloads

#2) Adding to Repository
#Ansbile
sudo apt-add-repository ppa:ansible/ansible -y


#Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#3) Enable Ports
#Enable Ports 

sudo ufw allow 8090,8091,8092
# sudo ufw allow 8090
# sudo ufw allow 8091
# sudo ufw allow 8092
# sudo ufw allow 8093
# sudo ufw allow 8094
# sudo ufw allow 8095
# sudo ufw allow 8096
# sudo ufw allow 8097
# sudo ufw allow 8098
# sudo ufw allow 8099
sudo ufw allow MyCustomProfile


#Adding Tools
sudo apt-get install python -y
sudo apt-get install python3 -y
sudo apt-get install default-jdk -y
sudo apt-get install default-jre -y
sudo apt-get install mariadb-server -y
sudo apt-get install sqldeveloper-package -y


#Update the system
sudo apt-get update && sudo apt-get upgrade -y

#Install All 
sudo apt-get install git -y
sudo apt-get install ansible -y
sudo apt-get install jenkins -y

#STOP the services
systemctl stop jenkins
systemctl stop mariadb

#Change Ports
#sed -i s/original/new/g file.txt 
#_Jenkins
sudo sed -i s/8080/8090/g /etc/default/jenkins

#_MariaDB
# Change 3306 to 8099
sudo sed -i s/3306/8099/g /etc/mysql/mariadb.conf.d/50-server.cnf


#START the services
sudo systemctl start jenkins
sudo systemctl start mariadb
systemctl status jenkins


#Echo Installed 
echo "Installed Git Version : " `git --version`
echo "Install Ansible Vwersion : " `ansible --version`
echo "Current Python 2 Version : " `python --version`
echo "Current Python 3 Version : " `python3 --version`
echo "Maria DB Version : " `mysql -V`



#Port Status 
sudo ufw status


echo "Administator Passwords" 
echo "Jenkins Password : " `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`