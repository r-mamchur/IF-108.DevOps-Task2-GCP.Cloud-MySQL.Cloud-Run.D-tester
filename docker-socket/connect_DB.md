### PHP Data Objects - PDO

Connect throught socket.
This help me https://www.php.net/pdo.construct
```
<?php
$dsn = 'mysql:dbname=testdb;unix_socket=/path/to/socket';
?>
```
D-Tester ``\<Back-End dir\>/application/config/database.php``:


'type'       => 'PDO',                                                                                  
'connection' => array(  
            /**                        
             * The following options are available for PDO:                         
             *                         
             * string   dsn     -   Data Source Name                         
             * string   username    -   database username                         
             * string   password    -   database password                         
             * boolean  persistent use persistent connections?                         
            */                                                                                                                        
        'dsn'        => 'mysql:host=localhost;unix_socket=/clousql/if108-288707:us-central1:mysqldt;dbname=dtapi;charset=utf8',
        'username'   => 'dtapi',
        'password'   => 'Passw0rd(',                                                                   
        'persistent' => FALSE,                                                                                                     

