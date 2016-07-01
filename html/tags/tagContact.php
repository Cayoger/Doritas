<div class="page-header">
  <h3 class="">
    Datos de Contacto
  </h3>
</div>
<div class="form-horizontal">
  <div class="form-group">
    <label for="inputTeléfono" class="col-lg-3 control-label">Teléfono</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['tel_usr'] != 0) {
          echo '<input value="'.$usr[$_SESSION['app_id']]['tel_usr'].'" type="number" class="form-control" placeholder="Teléfono">';
        } else {
          echo '<input type="number" class="form-control" placeholder="Teléfono">';
        }
       ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputCelular" class="col-lg-3 control-label">Móvil</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['cel_usr'] != 0) {
          echo '<input value="'.$usr[$_SESSION['app_id']]['cel_usr'].'" type="number" class="form-control" placeholder="Móvil">';
        } else {
          echo '<input type="text" class="form-control" placeholder="Móvil">';
        }

       ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPais" class="col-lg-3 control-label">País</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['pais'] == null) {
          echo '<input type="text" class="form-control" placeholder="País">';
        } else {
          echo '<input value="'.$usr[$_SESSION['app_id']]['pais'].'" type="text" class="form-control" placeholder="País">';
        }
       ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputDepartamento" class="col-lg-3 control-label">Departamento</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['depto'] == null) {
          echo '<input type="text" class="form-control" placeholder="Departamento">';
        } else {
          echo '<input value="'.$usr[$_SESSION['app_id']]['depto'].'" type="text" class="form-control" placeholder="Departamento">';
        }
       ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputCiudad" class="col-lg-3 control-label">Ciudad</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['ciu_usr'] == null) {
          echo '<input type="text" class="form-control" placeholder="Ciudad">';
        } else {
          echo '<input value="'.$usr[$_SESSION['app_id']]['ciu_usr'].'" type="text" class="form-control" placeholder="Ciudad">';
        }
       ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputDireccion" class="col-lg-3 control-label">Dirección</label>
    <div class="col-lg-5">
      <?php
        if ($usr[$_SESSION['app_id']]['dir_usr'] == null) {
          echo '<input type="text" class="form-control" placeholder="Dirección">';
        } else {
          echo '<input value="'.$usr[$_SESSION['app_id']]['dir_usr'].'" type="text" class="form-control" placeholder="Dirección">';
        }
       ?>
    </div>
  </div>
  <hr>
  <div class="col-lg-3 col-lg-offset-5">
    <button type="button" class='btn btn-success'>Actualizar <i class="fa fa-floppy-o"></i></button>
  </div>
</div>
