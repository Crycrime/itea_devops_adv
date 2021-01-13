#!/bin/bash

sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key

cd /etc/apt

sudo yum update
sudo amazon-linux-extras install nginx1

sudo mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html.bak

sudo touch /usr/share/nginx/html/index.html
sudo chmod 777 /usr/share/nginx/html/index.html

cat <<EOF > /usr/share/nginx/html/index.html
<p>HELLO WORLD from <font color="red">Vitalii Vashkulat</font></p>
<h2>Build by Terraform v0.14.3</h2><br>

EOF

sudo service nginx start
