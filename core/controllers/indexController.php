<?php

  if (isset($_SESSION['app'])) {
    include("html/public/on.php");
  } else {
    include("html/index/index.php");
  }

?>
