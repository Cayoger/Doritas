<?php

session_start();
date_default_timezone_set('America/Bogota');
#Constantes de conexión
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','session');
#Constantes de la APP
define('APP_TITLE','Doritas S.A.S.');
define('APP_FOOTER','<i class="fa fa-code"></i> with <i class="fa fa-heart"></i> by ADSI 117 - Copyright &copy; ' . date('Y',time()));
#Estructuras
require("core/models/class.Conexion.php");
require("core/bin/function/Encrypt.php");
?>
