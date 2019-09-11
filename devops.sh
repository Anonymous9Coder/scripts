!/bin/sh

##############################################
#####									 #####
#####		GENERAL COMMANDS			 #####
#####									 #####
##############################################

#convert .pem to .ppk
puttygen anonymous.pem -O private -o anonymous.ppk

##############################################
#####									 #####
#####		ANSIBLE COMMANDS			 #####
#####									 #####
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
#####									 #####
#####			GIT	 COMMANDS			 #####
#####									 #####
##############################################
sudo yum update 
sudo yum install git

	#1. Initialize a local Git repository
git init	
	#2. Create a local copy of a remote repository
git clone ssh://git@github.com/[username]/[repository-name].git
# https://github.com/Anonymous9Coder/scripts.git
	#
    #
    #

##############################################
#####									 #####
#####		JENKINS COMMANDS			 #####
#####									 #####
##############################################

# For Jenkins to test & work ,You need to have Java (JRE / JDK) 
