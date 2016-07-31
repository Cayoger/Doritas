<?php
/**
 *
 */
class Orden {

  public $paquete;
  public $direccion;
  public $fecha;
  public $nota;

  function __construct($p,$d,$f,$n)  {
    $this->paquete = $p;
    $this->direccion = $d;
    $this->fecha = $f;
    $this->nota = $n;
  }

  public function newOrden() {

    $db = new Conexion();
    $cadena = "INSERT INTO `doritas`.`orden_trabajo`
    (`id_cli`,
      `id_cat`,
      `dir_ser`,
      `fec_reg`,
      `fec_ser`,
      `nota`)
      VALUES
      ('".$_SESSION['app_id']."',
      '$this->paquete',
      '$this->direccion',
      '".date('Y-m-d H:i:s')."',
      '$this->fecha',
      '$this->nota')";
      if ($db->query($cadena)) {
        $HTML = 1;
      } else {
        $HTML = '<div class="alert alert-danger" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>ERROR:</strong> En la base de datos
        </div>';
      }
      $db->close();
      echo $HTML;
  }
}




 ?>
