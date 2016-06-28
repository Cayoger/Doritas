<?php

function EmailTemplate($user,$link){
  $html = '
  <html>
    <body>
      <h2>Bienvenido '.$user.'</h2>
      <p><strong>Gracias por registrarte en '.APP_TITLE.'</strong></p>
      <p>Estamos ansiosos y listos para servirte</p>
      <p>Solo te falta un paso para poder adquirir todos nuestros servicios, activa tu cuenta con el enlace a continuacion.</p>
      <a href='.$link.' target="_blank">Activa tu cuenta</a>
      <p>&copy; '.date("Y",time()).' - ' .APP_TITLE. ' Todos los derechos reservados.</p>
    </body>
  </html>';

  return $html;
}

 ?>
