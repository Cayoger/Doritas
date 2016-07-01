<div class="page-header">
  <h3 class="">
    Datos de cuenta
  </h3>
</div>
<div class="form-horizontal">
  <div class="form-group">
    <label for="inputCorreo" class="col-lg-3 control-label">Correo</label>
    <div class="col-lg-5">
      <?php echo '<input value="'.$usr[$_SESSION['app_id']]['email'].'" type="text" class="form-control" placeholder="Correo">'; ?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPass" class="col-lg-3 control-label">Contraseña</label>
    <div class="col-lg-5">
      <input type="text" class="form-control" placeholder="Contraseña">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPass2" class="col-lg-3 control-label">Confirmar Contraseña</label>
    <div class="col-lg-5">
      <input type="text" class="form-control" placeholder="Confirmar Contraseña">
    </div>
  </div>
  <hr>
  <div class="col-lg-3 col-lg-offset-5">
    <button type="button" class='btn btn-success'>Actualizar <i class="fa fa-floppy-o"></i></button>
  </div>
</div>
