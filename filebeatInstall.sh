#! /bin/bash

#Install script for filebeat

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install filebeat
sudo update-rc.d filebeat defaults 95 10

#Enabling filebeat modules
sudo filebeat modules enable kibana
sudo filebeat modules enable system
sudo filebeat modules enable elasticsearch
