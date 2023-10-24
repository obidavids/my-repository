#!/bin/bash -x

# update system and install apache
yum update -y
yum install httpd -y

#change to the directory and download content
cd /var/www/html
FOLDER="https://raw.githubusercontent.com/obidavids/my-repository/main/101-kittens-carousel-static-website-ec2/static-web/"
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

# start and enbale httpd
systemctl start httpd
systemctl enable httpd
