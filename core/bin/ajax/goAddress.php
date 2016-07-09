<?php

$db = new Conexion();

$tel = $_POST['tel'];
$cel = $_POST['cel'];
$dir = $db->real_escape_string($_POST['dir']);
$pais = $_POST['pais'];
$dept = $_POST['dept'];
$ciud = $_POST['ciud'];
if ($tel != $usr[$_SESSION['app_id']]['tel_usr'] || $cel != $usr[$_SESSION['app_id']]['cel_usr'] || $dir != $usr[$_SESSION['app_id']]['dir_usr']) {
  $sql = "UPDATE `usuario` SET
  `tel_usr` = '$tel',
  `cel_usr` = '$cel',
  `pais` = '$pais',
  `depto` = '$dept',
  `ciu_usr` = '$ciud',
  `dir_usr` = '$dir' WHERE `id` = '".$_SESSION['app_id']."'";

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
