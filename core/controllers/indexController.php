<?php

  if (isset($_SESSION['app_id'])) {
    include("html/onSesion/on.php");
  } else {
    include("html/index/index.php");
  }

?>
