<?php


if (!empty($_POST['user']) && !empty($_POST['pass'])) {
  $db = new Conexion();
  $data = $db->real_escape_string($_POST['user']);
  $pass = Encrypt($_POST['pass']);
  $sql = $db->query("SELECT * FROM usuario WHERE  email = '$data' AND passw = '$pass' LIMIT 1;");
  if ($db->rows($sql) > 0) {
    if ($_POST['session']) { ini_set('session.cookie_lifetime', time() + (60*60*24));}
    $_SESSION['app_id'] = $db->recorrer($sql)[3];
    echo 1;
  } else {
    echo '<span class="alertError">
          <p>
          <i class="fa fa-exclamation"></i> <strong>Error:</strong> Escribiste mal la cuenta o la contraseña.
          </p>
          </span>';
  }
  $db->liberar($sql);
  $db->close();
} else {
    echo '<span class="alertWarning">
          <p>
          <i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Todos los campos deben de estar llenos.
          </p>
          </span>';
}


 ?>
