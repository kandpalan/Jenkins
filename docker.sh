#!/bin/bash
d=web_deployment-web && j=`id | cut -d'(' -f2 | cut -d')' -f1` && b=`docker images | grep -i $d | cut -d' ' -f8` && e=`docker-compose ps | grep -i web_deployment-web | cut -d' ' -f1` && c=/home/$j/web_deployment && g=`docker images | grep -i project_1-web | cut -d' ' -f1`

if [ "$e" == "$e" ] & [ "$d" == "$g" ]; then
docker-compose down && sleep 2 && docker rmi -f $b
else
echo -e '' > /dev/null
fi
cd $c && docker-compose up -d --build
