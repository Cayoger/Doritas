<?php

function usuarios(){
  $db = new Conexion();
  $sql = $db->query("SELECT * FROM usuario;");
  if ($db->rows($sql) > 0) {
    while ($u = $db->recorrer($sql)) {
      $user[$u['id']] = array(
        'id' => $u['id'],
        'id_per' => $u['id_per'],
        'tip_doc' => $u['tip_doc'],
        'num_doc' => $u['num_doc'],
        'nom_usr' => $u['nom_usr'],
        'ape_usr' => $u['ape_usr'],
        'tel_usr' => $u['tel_usr'],
        'cel_usr' => $u['cel_usr'],
        'pais' => $u['pais'],
        'depto' => $u['depto'],
        'ciu_usr' => $u['ciu_usr'],
        'dir_usr' => $u['dir_usr'],
        'id_est' => $u['id_est'],
        'email' => $u['email'],
        'passw' => $u['passw'],
        'keyreg' => $u['keyreg']
      );
    }
  } else {
    $user = false;
  }

  $db->close();

  return $user;
}


 ?>
