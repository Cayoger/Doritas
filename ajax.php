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
      case 'datos':
        require("core/bin/ajax/goData.php");
        $n = $usr[$_SESSION['app_id']]['nom_usr'] != $_POST['name'] ? true : false;
        $a = $usr[$_SESSION['app_id']]['ape_usr'] != $_POST['lname'] ? true : false;
        $t = $usr[$_SESSION['app_id']]['tip_doc'] != $_POST['tipo'] ? true : false;
        $i = $usr[$_SESSION['app_id']]['num_doc'] != $_POST['num'] ? true : false;
          if ($n || $a || $t || $i){
            $update = new Perfil();
            $update->updateData($_POST['name'],$_POST['lname'],$_POST['num'],$_POST['tipo']);
          } else {
            echo "";
          }
        break;
      case 'location':
        require("core/bin/ajax/goData.php");
        $t = $usr[$_SESSION['app_id']]['tel_usr'] != $_POST['tel'] ? true : false;
        $c = $usr[$_SESSION['app_id']]['cel_usr'] != $_POST['cel'] ? true : false;
        $d = $usr[$_SESSION['app_id']]['dir_usr'] != $_POST['dir'] ? true : false;
        if ($t || $c || $d) {
          $update = new Perfil();
          $update->updateAddress($_POST['tel'],$_POST['cel'],$_POST['pais'],$_POST['dept'],$_POST['ciud'],$_POST['dir']);
        } else {
            echo "no hay cambios";
        }
        break;
      case 'acount':
        // require("core/bin/ajax/goData.php");
        #por ahora no estara habilitado
        break;
      case 'news':
        require("core/bin/ajax/goNews.php");
        $gn = new Orden($_POST['cat'],$_POST['dirS'],$_POST['fecS'],$_POST['nota']);
        $gn->newOrden();
        break;
      default:
        header("location: ?view=index");
        break;
    }
  } else {
    header("location: ?view=index");
  }


 ?>
