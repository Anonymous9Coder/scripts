==========================================================================================

Devops 
PLAN --> CODE --> BUILD --> TEST --> RELEASE --> DEPLOY --> OPERATE --> MONITOR

Learning Curve 

Continuous Development -----> Version Control (GIT) 
Continuous Integration -----> Jenkins
Continuous Deployment  -----> Configuration Management (Puppet & Ansible) & Virtualization (Docker)
Continuous Testing     -----> Testing Tool Selenium 
Continuous Monitoring  -----> Nagios


==========================================================================================

GIT - Version Control System
Docker - Containisation Platform
	Docker Swam -- Container Orchidstration

Puppet & Ansible -- Configuration Management
Selenium -- Software Testing 
Jenkins -- Continous Integration / Continous Deployment 
Kubernetes -- Container Orchidstration Platform
Nagios -- Continous Monitoring
  
==========================================================================================

***********************
**                   **
**      GIT          **
**                   **
***********************

LifeCycles 
	-- Create Repository 
	-- Making Changes 
	-- Parallel Development 
	-- Syncing Repository

Create -- Stage -- Push -- Sync



Commands 
	
$ Install GIT 
	-- sudo yum install git 
	-- sudo apt-get install git 

$ Create a Directory for GIT
	eg : mkdir /tmp/devops/git/


$ Create couple of txt files with some basic content 
 	You have to inform the tool that this the folder that I will be using for my codes 
to do that , Get into directory and type the below command 
	-- git init 

$ To Know the status of the directory 
	-- git status 

$  To Add the <all>files to git file system 
	git add . 
	git add <filename>

$ Saving the files in git file system 
git commit -m "GIT Training"

$ Adding file to github 
	-- Configure Repository
			-- git remove add origin "<CopyPaste the URL from GITHUB>"
	-- Adding files to the server 
			-- git push origin master
			<Enter the credentials> 

$ Check the github page if the files are loaded 



$$ Cloning a respository 
	- Makes easier for more than 1 developer can work 

git clone "<url>" 

