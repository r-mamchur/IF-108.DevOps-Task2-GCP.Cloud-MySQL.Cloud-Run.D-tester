#!/bin/bash

 sed -i -e "s|host=localhost;dbname=dtapi2|host=localhost;unix_socket=/cloudsql/$INSTANCE_CONNECTION_NAME;dbname=$DBNAME|g" /var/www/dtapi/api/application/config/database.php
 sed -i -e "s|'username'   => 'dtapi'|'username'   => '$MYSQL_USER'|g" /var/www/dtapi/api/application/config/database.php
 sed -i -e "s|'password'   => 'dtapi'|'password'   => '$MYSQL_PASSWORD'|g" /var/www/dtapi/api/application/config/database.php

 sed -i -e "s|https://dtapi.if.ua/api/|$URL_BE/|g" /var/www/dtapi/main-es2015.js
 sed -i -e "s|https://dtapi.if.ua/api/|$URL_BE/|g" /var/www/dtapi/main-es2015.js.map
 sed -i -e "s|https://dtapi.if.ua/api/|$URL_BE/|g" /var/www/dtapi/main-es5.js /var/www/dtapi/main-es5.js.map

#echo '###  /var/www/dtapi/main-es2015.js'
#cat  /var/www/dtapi/main-es2015.js | grep apiUrl

echo "URL_BE -" $URL_BE

exec "$@"