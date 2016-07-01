<!-- === cabeza panel === -->
<div class="page-header">
  <h3 class="">
    Datos Personales
  </h3>
</div>
<!-- fin cabeza panel -->
<!-- === cuerpo panel === -->
  <div class="form-horizontal">
    <div class="form-group">
      <label for="inputTypeDocument" class="col-lg-3 control-label">Tipo de documento</label>
      <div class="col-lg-5">
        <select class="form-control">
          <?php
          if ($usr[$_SESSION['app_id']]['tip_doc'] == 0) {
            echo '<option value="0">Documento</option>';
            echo '<option value="1">C.C.</option>';
            echo '<option value="2">NIT</option>';
          } else if ($usr[$_SESSION['app_id']]['tip_doc'] == 1) {
              echo '<option value="0">Documento</option>';
              echo '<option value="1" selected="selected">C.C.</option>';
              echo '<option value="2">NIT</option>';
          } else {
              echo '<option value="0">Documento</option>';
              echo '<option value="1">C.C.</option>';
              echo '<option value="2" selected="selected">NIT</option>';
          }

          ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="inputNumDocument" class="col-lg-3 control-label">Numero documento</label>
      <div class="col-lg-5">
        <?php
          if ($usr[$_SESSION['app_id']]['num_doc'] == null) {
            echo '<input type="text" class="form-control" placeholder="Numero documento">';
          } else {
            echo '<input value="'.$usr[$_SESSION['app_id']]['num_doc'].'" type="text" class="form-control" placeholder="Numero documento">';
          }
         ?>
      </div>
    </div>
    <div class="form-group">
      <label for="inputName" class="col-lg-3 control-label">Nombre</label>
      <div class="col-lg-5">
        <?php
          if ($usr[$_SESSION['app_id']]['nom_usr'] == null) {
            echo '<input type="text" class="form-control" placeholder="Nombre">';
          } else {
            echo '<input value="'.$usr[$_SESSION['app_id']]['nom_usr'].'" type="text" class="form-control" placeholder="Numero documento">';
          }
         ?>
      </div>
    </div>
    <div class="form-group">
      <label for="inputLastName" class="col-lg-3 control-label">Apellido</label>
      <div class="col-lg-5">
        <?php
          if ($usr[$_SESSION['app_id']]['ape_usr'] == null) {
            echo '<input type="text" class="form-control" placeholder="Apellido">';
          } else {
            echo '<input value="'.$usr[$_SESSION['app_id']]['ape_usr'].'" type="text" class="form-control" placeholder="Numero documento">';
          }
         ?>
      </div>
    </div>
    <hr>
    <div class="col-lg-3 col-lg-offset-5">
      <button type="button" class='btn btn-success'>Actualizar <i class="fa fa-floppy-o"></i></button>
    </div>
  </div>
<!-- fin cuerpo panel -->
<!-- === pie panel === -->
