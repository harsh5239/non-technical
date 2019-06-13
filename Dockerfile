FROM fedora
# this is base image where we want some changes
# FROM check images un local system then pull from docker hub
MAINTAINER harshmp340@gmail.com
#infp about image creator
RUN yum install httpd -y
#lauch a container and do the changes
COPY index.html /var/www/html
# source == base os and destination ==coantainer
EXPOSE 80
#we want to use HTTP in side container
ENTRYPOINT httpd -DFOREGROUND
#by default process of container
#ulternative way of starting httpd service instead of systemctl
