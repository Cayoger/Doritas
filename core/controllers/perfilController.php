<?php

  if (isset($_SESSION['app_id'])) {
    include 'html/public/perfil.php';
  } else {
    header('location: ?view=index');
  }

 ?>
