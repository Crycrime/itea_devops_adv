#!/bin/bash

echo "$MY_NAME" >> /usr/share/nginx/html/index.html

nginx -g 'daemon off;'
