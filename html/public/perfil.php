<?php include 'html/overall/header.php'; ?>

<?php include 'html/overall/navbar.php'; ?>
  <div class="row m-t-70">
    <div class="container">
      <div class="col-lg-3">
        <img src="view/img/servicio1.gif" class='img-responsive img-rounded' alt="" />
        <ul class="list-group">
          <li class="list-group-item">
            <!-- <span class="badge">14</span> -->
            <i class="fa fa-user"></i>  <?php echo $usr[$_SESSION['app_id']]['nom_usr']." ".$usr[$_SESSION['app_id']]['ape_usr']; ?>
          </li>
          <li class="list-group-item">
            <!-- <span class="badge">2</span> -->
            <i class="fa fa-envelope"></i>  <?php echo $usr[$_SESSION['app_id']]['email']; ?>
          </li>
          <li class="list-group-item">
            <i class="fa fa-rocket"></i> <?php
              switch ($usr[$_SESSION['app_id']]['id_per']) {
                case '0':
                  echo "Cliente";
                  break;
                case '1':
                  echo "Asociado";
                  break;
                case '2':
                  echo "Auditor";
                  break;
                case '3':
                  echo "Administrado";
                  break;
                default:
                  # code...
                  break;
              }
             ?>
          </li>
        </ul>
      </div>
      <div class="col-lg-9">
        <!-- === inicio panel === -->
        <ul class="nav nav-tabs">
          <li class="active"><a href="#data" data-toggle="tab"><i class="fa fa-user"></i> Datos</a></li>
          <li class=""><a href="#contact" data-toggle="tab"><i class="fa fa-map-marker"></i> Contacto</a></li>
          <li class=""><a href="#account" data-toggle="tab"><i class="fa fa-cog"></i> Cuenta</a></li>
          <li class="disabled"><a><i class="fa fa-credit-card"></i> Pago</a></li>
        </ul>
        <div id="myTabContent" class="tab-content">
          <div class="tab-pane fade active in" id="data">
            <?php include 'html/tags/tagData.php'; ?>
          </div>
          <div class="tab-pane fade" id="contact">
            <?php include 'html/tags/tagContact.php'; ?>
          </div>
          <div class="tab-pane fade" id="account">
            <?php include 'html/tags/tagAccount.php'; ?>
          </div>
          <div class="tab-pane fade" id="credit">
            <?php include 'html/tags/tagData.php'; ?>
          </div>
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
<script src='view/js/perfil.js'></script>


<?php include 'html/overall/footer.php'; ?>
