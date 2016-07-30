<?php

class GoLogin {

  public $email;
  public $pass;
  public $session;
  public $html;

  public function __construct($email, $pass,$session) {
    $this->email = $email;
    $this->pass = $pass;
    $this->session = $session;
  }

  public function login() {
    $db = new Conexion();
    $this->email = $db->real_escape_string($this->email);
    $this->pass = Encrypt($this->pass);
    $sql = $db->query("SELECT id FROM usuario WHERE  email = '$this->email' AND passw = '$this->pass' LIMIT 1;");
    if ($db->rows($sql) > 0) {
      if ($this->session) { ini_set('session.cookie_lifetime', time() + (60*60*24));}
      $_SESSION['app_id'] = $db->recorrer($sql)[0];
      $this->html = 1;
    } else {
      $this->html = '<div class="alert alert-danger" role="alert">
            <i class="fa fa-exclamation"></i> <strong>Error:</strong> Escribiste mal la cuenta o la contraseña.
            </div>';
    }
    $db->liberar($sql);
    $db->close();
  }

  public function __destruct() {
    echo $this->html;
  }
}



 ?>
