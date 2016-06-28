<?php

 if (isset($_GET['key'],$_SESSION['app_id'])) {
   $db = new Conexion();
   $id = $_SESSION['app_id'];
   $key = $db->real_escape_string($_GET['key']);
   $sql = $db->query("SELECT id FROM usuario WHERE id='$id' AND keyreg='$key' LIMIT 1;");
   if ($db->rows($sql) > 0) {
     $db->query("UPDATE usuario SET id_est='1', keyreg='0' WHERE id='$id';");
     header('location: ?view=on&estado=success');
   } else {
     header('location: ?view=on&estado=error');
   }
   $db->liberar($sql);
   $db->close();
 } else {
   header('location: ?view=index');
 }

 ?>
