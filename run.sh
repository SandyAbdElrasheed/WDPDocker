#!/bin/bash

    cd /home/ec2-user/
    sudo mkdir WPDocker
    sudo yum install docker
    sudo systemctl enable docker 
    sudo systemctl start docker
    sudo chown ec2-user:docker /var/run/docker.sock

   cd /home/ec2-user/WPDocker/html
   sudo chmod 777 wp-config.php
   sudo sed -i '44 s/mysql/wp/g' wp-config.php
   sudo sed -i '59 s/wordpress/db:3306/g' wp-config.php
   sudo sed -i '47 s/username/sandy/g' wp-config.php
   docker-compose up -d