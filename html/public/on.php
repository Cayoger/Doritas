<?php

  if (isset($_SESSION['app_id'])) {
    echo "welcome ".$_SESSION['app_id']." <a href='?view=logout'>Cerrar session</a>";
  } else {
    header("location: index.php");
  }


 ?>
