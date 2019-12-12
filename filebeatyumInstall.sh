#! /bin/bash

sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
sudo cp elastic.repo /etc/yum.repos.d/
sudo yum install filebeat -y
sudo systemctl enable filebeat

