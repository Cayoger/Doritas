<?php

if (isset($_SESSION['app_id'])){
  include('html/public/nuevoPedido.php');
}else{
  header('Location: ?view=index');
}

?>
