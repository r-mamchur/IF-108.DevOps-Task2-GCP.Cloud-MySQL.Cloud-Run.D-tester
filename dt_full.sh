#!/bin/bash

export MYSQL_ROOT_PASSWORD=Passw0rd
export MYSQL_DATABASE=dtapi
export MYSQL_USER='dtapi' 
export MYSQL_PASSWORD='Passw0rd('
export MYSQL_HOST='my-container'
export DT_BE_HOME=$(pwd)/_data/dtapi/api
export URL_BE='http://192.168.56.223/api'


#chown 48:48 $DT_BE_HOME -R
#chmod 777 -R $DT_BE_HOME
#---------------------------------------- back-end finish

docker run --name $MYSQL_HOST  \
  -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
  -e MYSQL_DATABASE=$MYSQL_DATABASE \
  -e MYSQL_USER=$MYSQL_USER \
  -e MYSQL_PASSWORD=$MYSQL_PASSWORD \
  -v $(pwd)/init_db:/docker-entrypoint-initdb.d  \
  --rm -d mysql \
  --default-authentication-plugin=mysql_native_password

#docker build -t "dt_be:8" .

docker run \
   -h be \
   --name be-container \
   --link $MYSQL_HOST \
   -e MYSQL_HOST=$MYSQL_HOST \
   -e MYSQL_DATABASE=$MYSQL_DATABASE \
   -e MYSQL_USER=$MYSQL_USER \
   -e MYSQL_PASSWORD=$MYSQL_PASSWORD \
   --rm -d rmamchur/dt_be:6

docker run \
   -h fe \
   --name fe-container \
   -e URL_BE=$URL_BE \
   --rm -d rmamchur/dt_fe:16

docker run \
   -h hap \
   --name ha-container \
   -p 80:80 \
   --link be-container \
   --link fe-container \
   --rm -d hap

#docker run -v $(pwd)/_data/dtapi/api:/var/www/dtapi/api  -h be --name be-container -p 80:80 \
#   --rm -d dta:1


# /usr/local/sbin/haproxy -f  /usr/local/etc/haproxy/haproxy.cfg   

docker run    -h fe    --name fe-container -e URL_BE='http://192.168.56.223/api'  --rm -d rmamchur/dt_fe:20
