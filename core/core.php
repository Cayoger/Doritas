<?php

session_start();
date_default_timezone_set('America/Bogota');
#Constantes de conexión
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','doritas');
#Constantes de la APP
define('APP_URL','http://localhost/Doritas/');
define('APP_TITLE','Doritas S.A.S.');
define('APP_FOOTER','<i class="fa fa-code"></i> with <i class="fa fa-heart"></i> by ADSI 117 - Copyright &copy; ' . date('Y',time()));
#constantes de phpmailer
define('PHPMAILER_HOST','p3plcpnl0173.prod.phx3.secureserver.net');
define('PHPMAILER_USER','public@ocrend.com');
define('PHPMAILER_PASS','Prinick2016');
define('PHPMAILER_PORT',465);


#Estructuras
require('vendor/autoload.php');
require("core/models/class.Conexion.php");
require("core/bin/function/Encrypt.php");
require("core/bin/function/EmailTemplate.php");
require("core/bin/function/users.php");


$usr = usuarios();
?>
