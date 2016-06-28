<?php

$db = new Conexion();

$name = $db->real_escape_string($_POST['name']);
$lname = $db->real_escape_string($_POST['lname']);
$pass = Encrypt($_POST['pass']);
$email = $db->real_escape_string($_POST['email']);

$sql = $db->query("SELECT email FROM `usuario` WHERE email='$email' LIMIT 1;");
if($db->rows($sql) == 0) {
  $keyreg = md5(time());
  $link = APP_URL . '?view=activar&key=' . $keyreg;

  $mail = new PHPMailer;
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
  $mail->Port = PHPMAILER_PORT;                                    // TCP port to connect to

  $mail->setFrom(PHPMAILER_USER, APP_TITLE); //Quien manda el correo?

  $mail->addAddress($email, $name." ".$lname);     // A quien le llega

  $mail->isHTML(true);    // Set email format to HTML

  $mail->Subject = 'Activación de tu cuenta';
  $mail->Body    = EmailTemplate($name. " " .$lname,$link);
  $mail->AltBody = 'Bienvenido a Doritas ' . $name . " " . $lname. ' ahora solo te falta un paso, accede a este enlace para confirmar tu cuenta: ' . $link;

  if(!$mail->send()) {
      $HTML = '<span class="alert alert-danger" role="alert">
                <strong>ERROR:</strong> ' . $mail->ErrorInfo . ' </span>';
  } else {
    // $fecha_reg = date('d/m/Y', time());
    $sql_2 = $db->query("SELECT MAX(id) AS id FROM `usuario`;");
    $nid = $db->recorrer($sql_2)[0];
    $db->query("INSERT INTO `usuario` (`id`, `id_per`, `nom_usr`, `ape_usr`, `email`, `passw`, `keyreg`) VALUES ('".($nid+1)."','0','$name','$lname','$email','$pass','$keyreg')");
    $_SESSION['app_id'] = $db->recorrer($sql_2)[0];
    $db->liberar($sql_2);
    $HTML = 1;
  }
} else {
  $usuario = $db->recorrer($sql)[0];
  if(strtolower($email) == strtolower($usuario)){
    $HTML = '<span class="alert alert-danger" role="alert">
              <strong>ERROR:</strong> El email ya esta registrado.
            </span>';
  }
}

$db->liberar($sql);
$db->close();

echo $HTML;

 ?>
