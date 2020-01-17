#!/bin/bash

#create a download directory
mkdir ~/devops/
chmod 755 ~/devops/

#Installing Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh 
sudo usermod -aG docker joelj
sudo apt-get update

#Installing Kubernetes

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get update
sudo apt install kubeadm

#Installing OpenShift 

#picked from below link
#https://www.techrepublic.com/article/how-to-install-openshift-origin-on-ubuntu-18-04/


cd ~/devops/
wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
tar xvzf openshift*.tar.gz
cd openshift-origin-client-tools*/
sudo mv  oc kubectl  /usr/local/bin/
oc version