#!/bin/bash
docker run -l service=nginx --name nginx-app -p 80:80 -d -v $(pwd):/usr/share/nginx/html nginx
