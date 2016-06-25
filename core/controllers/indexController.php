<?php

  if (isset($_SESSION['app_id'])) {
    include("html/public/on.php");
  } else {
    include("html/index/index.php");
  }

?>
