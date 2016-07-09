<?php

$db = new Conexion();

$nombre = $db->real_escape_string($_POST['name']);
$apellido = $db->real_escape_string($_POST['lname']);
$numeroId = $_POST['num'];
$tipoId = $_POST['tipo'];

if ($nombre != $usr[$_SESSION['app_id']]['nom_usr'] || $apellido != $usr[$_SESSION['app_id']]['ape_usr'] || $tipoId != $usr[$_SESSION['app_id']]['tip_doc'] || $numeroId != $usr[$_SESSION['app_id']]['num_doc']) {
  $sql = "UPDATE `usuario` SET
  `tip_doc`= '$tipoId',
  `num_doc`= '$numeroId',
  `nom_usr`= '$nombre',
  `ape_usr`= '$apellido' WHERE `id` = '".$_SESSION['app_id']."'";

  if ($db->query($sql)) {
    $html = 1;
  } else {
    $html = '<div class="alert alert-danger" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <span class="fa fa-exclamation"></span> <strong>Error: </strong>En la base de datos
            </div>';
  }
} else {
  $html = '';
}
$db->close();
echo $html;

 ?>
