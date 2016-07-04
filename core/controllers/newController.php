<?php

if (isset($_SESSION['app_id'])){
  include('html/public/nuevo.php');
}else{
  header('Location: ?view=index');
}

?>
