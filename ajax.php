<?php


  if ($_POST) {
    require("core/core.php");
    switch (isset($_GET['mode']) ? $_GET['mode'] : null) {
      case 'login':
        require("core/bin/ajax/goLogin.php");
        break;
      case 'reg':
        require("core/bin/ajax/goReg.php");
        break;
      default:
        header("location: ?view=index");
        break;
    }
  } else {
    header("location: ?view=index");
  }


 ?>
