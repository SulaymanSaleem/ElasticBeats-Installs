#! /bin/bash

sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
sudo cp elastic.repo  ~/etc/yum.repos.d/
sudo yum install packetbeat
sudo chkconfig --add packetbeat
