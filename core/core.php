<?php

session_start();
date_default_timezone_set('America/Bogota');
#Constantes de conexión
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','session');
#Constantes de la APP
define('APP_FOOTER',' - Copyright &copy; ' . date('Y',time()));
#Estructuras
require("core/models/class.Conexion.php");
require("core/bin/function/Encrypt.php")
?>
