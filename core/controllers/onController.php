<?php
if (isset($_SESSION['app_id'])) {
  include("html/public/on.php");
} else {
  header("location: ?view=index");
}
 ?>
