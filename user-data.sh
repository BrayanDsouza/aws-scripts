#!/bin/bash
# User data script for updating os repo and installing httpd on aws-linux
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello world from $(hostname -f)</h1>" > /var/www/html/index.html