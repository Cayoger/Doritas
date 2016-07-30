<?php

class GoRegistro {

  #atributos
  public $HTML;
  public $name;
  public $last;
  public $email;
  public $pass;

  #metodos
  public function __construct($n, $l, $e, $p)  {
    #resivimos las variables y las asignamos a los atributos
    $this->name = $n;
    $this->last = $l;
    $this->email = $e;
    $this->pass = $p;
  }

  public function registrar(){
    #instanciamos la base de datos
    $db = new Conexion();
    #asignamos de nuevo las variables, para que nos retorne un error en caso de hake
    $this->name = $db->real_escape_string($this->name);
    $this->last = $db->real_escape_string($this->last);
    $this->email = $db->real_escape_string($this->email);
    $this->pass = Encrypt($this->pass);
    #realizamos la consulta
    $sql = $db->query("SELECT email FROM `usuario` WHERE email='$this->email' LIMIT 1;");
    #si rows devulve 0 significa que no existe un usuario con este email
    if($db->rows($sql) == 0) {
        #se crea un Encrypt del tiempo de este instante
        $keyreg = md5(time());
        #se realiza una concatenacion para posterior mente enviarlo al email del registrado
        $link = APP_URL . '?view=activar&key=' . $keyreg;
        #se instancia PHPMailer que nos facilitara el envio de emails
        $mail = new PHPMailer;
        #configuracion en caso de envio por servidor
        $mail->CharSet = "UTF-8";
        $mail->Encoding = "quoted-printable";
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = PHPMAILER_HOST;  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = PHPMAILER_USER;                 // SMTP username
        $mail->Password = PHPMAILER_PASS;                           // SMTP password
        $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        );
        $mail->Port = PHPMAILER_PORT; // TCP port to connect to
        #configuracion de aquien se envia, si se redirecciona a varios emails
        $mail->setFrom(PHPMAILER_USER, APP_TITLE); //Quien manda el correo?
        $mail->addAddress($this->email, $this->name." ".$this->last);     // A quien le llega
        $mail->isHTML(true);    // Set email format to HTML
        #configuracion de lo que dira el correo
        $mail->Subject = 'Activación de tu cuenta';
        $mail->Body    = EmailTemplate($this->name. " " .$this->last, $link);
        $mail->AltBody = 'Bienvenido a Doritas ' . $this->name . " " . $this->last. ' ahora solo te falta un paso, accede a este enlace para confirmar tu cuenta: ' . $link;
        #si el email no se envia por alguna razón, genera un error y si no, ingresa el usuario a nuestra db
        if(!$mail->send()) {
            $this->HTML = '<span class="alert alert-danger" role="alert">
                      <strong>ERROR:</strong> ' . $mail->ErrorInfo . ' </span>';
        } else {
          // $fecha_reg = date('d/m/Y', time());
          $sql_2 = $db->query("SELECT MAX(id) AS id FROM `usuario`;");
          $_SESSION['app_id'] = ($db->recorrer($sql_2)[0]) + 1;
          $db->query("INSERT INTO `usuario` (`id`, `nom_usr`, `ape_usr`, `email`, `passw`, `keyreg`) VALUES ('".$_SESSION['app_id']."','$this->name','$this->last','$this->email','$this->pass','$keyreg')");
          $db->liberar($sql_2);
          $this->HTML = 1;
        }
    } else {
      $usuario = $db->recorrer($sql)[0];
      if(strtolower($this->email) == strtolower($usuario)){
          $this->HTML = '<div class="alert alert-danger" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <strong>ERROR:</strong> El email ya esta registrado.
          </div>';
      }
    }
    #cerramos la conexion de la base de datos
    $db->liberar($sql);
    $db->close();
  }

  public function __destruct() {
    #mandamos el mensaje correspondiente
    echo $this->HTML;
  }
}

 ?>
