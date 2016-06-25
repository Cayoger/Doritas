<?php

  if (isset($_SESSION['app_id'])) {
    include('html/overall/header.php');

    echo "welcome ".$_SESSION['app_id']." <a href='?view=logout'>Cerrar session</a>";
  
    include("html/overall/footer.php");
  } else {
    header("location: index.php");
  }


 ?>
