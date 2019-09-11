#!/usr/bin/sh

################################################################################
######                                                                    ######
######              The Below Packages is used for personal use           ######
######                                                                    ######
################################################################################

echo $"By hitting '[ENTER]' the following actions will be completed"
echo -e "01. RedHat Registration 
	  \n 02. Enable Repo & Yum Manager 
	  \n 03. Install WGET
	  \n 04. Install Java 8 (Java 1.8)
	  \n 05. Install VLC LAN Player
	  \n 06. Install Eclipse
	  \n 07. Install VSCode
	  \n 08. Install Install Text Editor (sublime)
	  \n 09. Install Pycharm
	  \n 10. Install GoogleChrome
	  \n 11. Install MySQL Server
	  \n 12. Install MySQL Client
	  \n 13. Install MySQL WorkBench"

# Registration 
subscription-manager register --username njohnjoel --password Connor23


#Enable repo subscription manager
subscription-manager repos --enable=rhel-7-server-optional-rpms


#Enable config yum manager
yum-config-manager --enable rhui-REGION-rhel-server-optional

#Install wget
if 
	wget --version =="unrecognized option"
then 
	yum install wget
else 
	print "wget is Already Installed" ` wget --version | head -1`
fi

#Install Java
sudo yum install java-1.8.0-openjdk-devel
#sudo yum install java-11-openjdk-devel

#Install VLC LAN Player
    yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
    yum install vlc
    yum install vlc-core 
    yum install python-vlc npapi-vlc 

#Download & Install Pycharm
cd /tmp/
echo `pwd`
mkdir joelj
chmod 777 joelj
cd joelj/
wget https://download.jetbrains.com/python/pycharm-community-2019.1.3.tar.gz
tar -xzf pycharm*.gz

echo `pwd`
echo `ls`

/tmp/joelj/pycharm-community-2019.1.3/bin/pycharm.sh



#Install MySQL Server, MySQL Client, MySQL WorkBench 
#Install Text Editor (Sublime)
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo yum-config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo yum install sublime-text

#sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
#sudo yum-config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
#sudo yum install sublime-text



#Install VSCode
touch /etc/yum.repos.d/vscode.repo
chmod 755 /etc/yum.repos.d/vscode.repo
cat /etc/yum.repos.d/vscode.repo > 
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
Ctrl-D [Enter]

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo yum check-update
sudo yum install code


#Install Eclipse


#Install Virt Viewer 
sudo yum install virt-viewer

#Install Google Chrome
cd /tmp/joel/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum -y install redhat-lsb libXScrnSaver
yum -y localinstall google-chrome-stable_current_x86_64.rpm

#Create Local Repository in RHEL

mkdir /mnt/iso 
chmod 755 /mnt/iso

touch /etc/yum.repos.d/localrepo.repo
chmod 777 /etc/yum.repos.d/localrepo.repo
		
		#Copy Paste the below content 
		
# Mount CD and Copy the content into /mnt/iso
		
		[localrepo]
		name=localrepo
		enabled=1
		gpgcheck=0
		baseurl=file:// <Path>


yum repolist 
#It should load 4300 + repolist
