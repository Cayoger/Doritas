<?php
  //Core es el nucleo de programa
  require("core/core.php");
  //si existe un la url una variable llamada view
  if (isset($_GET['view'])) {
    //si existe el archivo
    if (file_exists('core/controllers/'.$_GET['view']."Controller.php")) {
        include('core/controllers/'.$_GET['view'].'Controller.php');
    } else {
      include('core/controllers/errorController.php');
    }
  } else {
    include('core/controllers/indexController.php');
  }

 ?>
