#! /bin/bash
sudo yum update
sudo yum install -y git java-1.8.0-openjdk maven docker
sudo chkconfig docker on
sudo service docker start
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
