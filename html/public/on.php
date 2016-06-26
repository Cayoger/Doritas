<?php

  if (isset($_SESSION['app_id'])) {
    include('html/overall/header.php');
    echo "<div id='conteiner'>";
    echo "welcome ".$_SESSION['app_id']." <a href='?view=logout'>Cerrar session</a>";
    echo "</div>";
    include("html/overall/footer.php");
  } else {
    header("location: index.php");
  }


 ?>
