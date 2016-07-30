<?php


  if ($_POST) {
    require("core/core.php");
    switch (isset($_GET['mode']) ? $_GET['mode'] : null) {
      case 'login':
        if (!empty($_POST['user']) && !empty($_POST['pass'])) {
          require("core/bin/ajax/goLogin.php");
          $log = new GoLogin($_POST['user'],$_POST['pass'],$_POST['session']);
          $log->login();
        } else {
          echo '<div class="alert alert-warning" role="alert">
          <i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Todos los campos deben de estar llenos.
          </div>';
        }
        break;
      case 'reg':
        require("core/bin/ajax/goReg.php");
        $reg = new GoRegistro($_POST['name'], $_POST['lname'], $_POST['email'], $_POST['pass']);
        $reg->registrar();
        break;
      case 'news':
        require("core/bin/ajax/goNews.php");
        break;
      case 'datos':
        require("core/bin/ajax/goData.php");
        break;
      case 'location':
        require("core/bin/ajax/goAddress.php");
        break;
      case 'acount':
        require("core/bin/ajax/goAcount.php");
        break;
      default:
        header("location: ?view=index");
        break;
    }
  } else {
    header("location: ?view=index");
  }


 ?>
