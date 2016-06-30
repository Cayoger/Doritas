<?php include 'html/overall/header.php'; ?>

<?php include 'html/overall/navbar.php'; ?>
  <div class="row m-t-20">
    <div class="container">
      <div class="col-lg-3">
        <img src="view/img/servicio1.gif" class='img-responsive img-rounded' alt="" />
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <?php echo $usr[$_SESSION['app_id']]['nom_usr']." ".$usr[$_SESSION['app_id']]['ape_usr']; ?>
          </a>
          <a href="#" class="list-group-item"><i class="fa fa-user"></i> Datos</a>
          <a href="#" class="list-group-item"><i class="fa fa-map-marker"></i> Contacto</a>
          <a href="#" class="list-group-item"><i class="fa fa-cog"></i> Cuenta</a>
          <a href="#" class="list-group-item disabled"><i class="fa fa-credit-card"></i> Pago</a>
        </div>
      </div>
      <div class="col-lg-9">
        <!-- === inicio panel === -->
        <div class="panel panel-primary">
          <!-- === cabeza panel === -->
          <div class="panel-heading">
            <h3 class="panel-title">
              Perfil: <?php
                switch ($usr[$_SESSION['app_id']]['id_per']) {
                  case '0':
                    echo "Cliente";
                    break;
                  case '1':
                    echo "Asociado";
                    break;
                  case '0':
                    echo "Auditor";
                    break;
                  case '0':
                    echo "Administrado";
                    break;
                  default:
                    # code...
                    break;
                }
               ?>
            </h3>
          </div>
          <!-- fin cabeza panel -->
          <!-- === cuerpo panel === -->
          <div class="panel-body">
            <div class="form-horizontal">
              <div class="form-group">
                <label for="inputTypeDocument" class="col-lg-3 control-label">Tipo de documento</label>
                <div class="col-lg-5">
                  <select class="form-control">
                    <?php
                    if ($usr[$_SESSION['app_id']]['tip_doc'] == null) {
                      echo '<option value="0">Documento</option>';
                      echo '<option value="1">C.C.</option>';
                      echo '<option value="2">NIT</option>';
                    } else {
                      echo '<option value="0" disabled>'.$usr[$_SESSION['app_id']]['tip_doc'].'</option>';
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
                      echo '<input value='.$usr[$_SESSION['app_id']]['num_doc'].' type="text" class="form-control" placeholder="Numero documento">';
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
                      echo '<input value='.$usr[$_SESSION['app_id']]['nom_usr'].' type="text" class="form-control" placeholder="Numero documento">';
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
                      echo '<input value='.$usr[$_SESSION['app_id']]['ape_usr'].' type="text" class="form-control" placeholder="Numero documento">';
                    }
                   ?>
                </div>
              </div>
            </div>
          </div>
          <!-- fin cuerpo panel -->
          <!-- === pie panel === -->
          <div class="panel-footer">
            <input type="button" class='btn btn-success' value="Guardar">
          </div>
          <!-- fin pie panel -->
        </div>
      </div>
    </div>
</div>
<!-- <div class="form-group">
  <label for="input" class="col-lg-3 control-label">documento</label>
  <div class="col-lg-5">
    <input type="text" class="form-control" placeholder="documento">
  </div>
</div> -->



<?php include 'html/overall/footer.php'; ?>
