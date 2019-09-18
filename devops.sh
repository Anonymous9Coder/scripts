!/bin/sh

##############################################
#####					 #####
#####		GENERAL COMMANDS	 #####
#####					 #####
##############################################

#convert .pem to .ppk
puttygen anonymous.pem -O private -o anonymous.ppk

##############################################
#####					 #####
#####		ANSIBLE COMMANDS	 #####
#####					 #####
##############################################

#1) Install Ansible 
sudo yum update 
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
subscription-manager repos --enable rhel-7-server-ansible-2.6-rpms
sudo yum update
yum install -y ansible
ansible --version

#2) Password less authendication between 2 systems
	#a. Create a User on Both Machines and Change Password
	#b. Add Users to sudoers 
	#c. Enable Password Authendication 
	#d. Create a ssh key on both machines 
	#e. copy sshkey between both machines 
#3) Adding Clients in Host File (Main Machine) 
#4) Test if Ansible is working fine 
#5) Create a .yml file in the host machine to test 
#6) 





##############################################
#####					 #####
#####		GIT COMMANDS		 #####
#####					 #####
##############################################
sudo yum update 
sudo yum install git

git clone https://github.com/Anonymous9Coder/scripts.git

	#1. Initialize a local Git repository
git init	
	#2. Create a local copy of a remote repository
git clone ssh://git@github.com/[username]/[repository-name].git
# https://github.com/Anonymous9Coder/scripts.git
	#
    #
    #

##############################################
#####					 #####
#####		JENKINS COMMANDS	 #####
#####					 #####
##############################################

# For Jenkins to test & work ,You need to have Java (JRE / JDK) 
#Install JavaPackage 
sudo yum install java-1.8.0-openjdk-devel

#enable the Jenkins repository(import the GPG key using the following curl command)
sudo curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

#add the repository to your system
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

#To Install the latest stable version of Jenkins
sudo yum install jenkins

#start the Jenkins service
sudo systemctl start jenkins
	#To Check status 
	$"systemctl status jenkins"

#You should recieve similar output 
		#	jenkins.service - LSB: Jenkins Automation Server
		#	Loaded: loaded (/etc/rc.d/init.d/jenkins; bad; vendor preset: disabled)
		#	Active: active (running) since Thu 2018-09-20 14:58:21 UTC; 15s ago
		#		Docs: man:systemd-sysv-generator(8)
		#	Process: 2367 ExecStart=/etc/rc.d/init.d/jenkins start (code=exited, status=0/SUCCESS)
		#	CGroup: /system.slice/jenkins.service

sudo systemctl enable jenkins
	#Expected output 
			#	jenkins.service is not a native service, redirecting to /sbin/chkconfig.
			#	Executing /sbin/chkconfig jenkins on
			

#Enable Port 8080
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

# Launch Jenkins 
# http://"your_ip_or_domain":8080

#Default AdminPassword 
	sudo cat /var/lib/jenkins/secrets/initialAdminPassword
	


