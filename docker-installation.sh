#!/bin/bash
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu   #for ubuntu server
sudo su - ubuntu
docker --version = "version"
echo $version

