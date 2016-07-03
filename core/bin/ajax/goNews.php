<?php

  $db = new Conexion();

  $pak = $_POST['cat'];
  $dir = $_POST['dirS'];
  $fe_s = $_POST['fecS'];
  $nota = $_POST['nota'];

  $cadena = "INSERT INTO `doritas`.`orden_trabajo`
  (`id_cli`,
  `id_cat`,
  `dir_ser`,
  `fec_reg`,
  `fec_ser`,
  `nota`)
  VALUES
  ('".$_SESSION['app_id']."',
  '$pak',
  '$dir',
  '".date('Y-m-d H:i:s')."',
  '$fe_s',
  '$nota')";
  if ($db->query($cadena)) {
    $HTML = 1;
  } else {
    $HTML = '<div class="alert alert-danger" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <strong>ERROR:</strong> En la base de datos
            </div>';
  }


  $db->close();
  echo $HTML;
 ?>
