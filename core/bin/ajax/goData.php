<?php

class Perfil {

  public $HTML;
  public $name;
  public $last;
  public $ident;
  public $tipo;
  public $adress = array();

  // public function __construct($n,$a,$i,$t)  {
  //   $this->name = $n;
  //   $this->last = $a;
  //   $this->ident = $i;
  //   $this->tipo = $t;
  // }

  public function updateData($n,$a,$i,$t){
    $db = new Conexion();
    $this->name = $db->real_escape_string($n);
    $this->last = $db->real_escape_string($a);
    $this->ident = $i;
    $this->tipo = $t;


    $sql = "UPDATE `usuario` SET
    `tip_doc`= '$this->tipo',
    `num_doc`= '$this->ident',
    `nom_usr`= '$this->name',
    `ape_usr`= '$this->last' WHERE `id` = '".$_SESSION['app_id']."'";

    if ($db->query($sql)) {
      $this->HTML = 1;
    } else {
      $this->HTML = '<div class="alert alert-danger" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <span class="fa fa-exclamation"></span> <strong>Error: </strong>En la base de datos
      </div>';
    }

    $db->close();
  }#fin function update para datos

  public function updateAddress($tel,$mov,$pai,$dep,$ciu,$dir){
    $db = new conexion();
    $this->address[] = $tel;
    $this->address[] = $mov;
    $this->address[] = $pai;
    $this->address[] = $dep;
    $this->address[] = $ciu;
    $this->address[] = $db->real_escape_string($dir);

    $sql = "UPDATE `usuario` SET
    `tel_usr` = '". $this->address[0] ."',
    `cel_usr` = '". $this->address[1] ."',
    `pais` = '". $this->address[2] ."',
    `depto` = '". $this->address[3] ."',
    `ciu_usr` = '". $this->address[4] ."',
    `dir_usr` = '". $this->address[5] ."' WHERE `id` = '". $_SESSION['app_id'] ."'";

    if ($db->query($sql)) {
      $this->HTML = 1;
    } else {
      $this->HTML = '<div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="fa fa-exclamation"></span> <strong>Error: </strong>En la base de datos
              </div>';
    }
    $db->close();
  }#fin de update para ubicacion y correo.

  public function updateCuenta() {

  }
  
  public function __destruct(){
    echo $this->HTML;
  }

}#fin perfil
 ?>
