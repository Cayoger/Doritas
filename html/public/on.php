<?php
  if (isset($_SESSION['app_id'])) {
    include('html/overall/header.php');
     if ($usr[$_SESSION['app_id']]['id_est'] == 0) {
      echo '<div class="row">
        <div class="col-lg-12">
          <div class="alert alert-danger" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong><i class="fa fa-exclamation"></i> Alerta!</strong> Debes de activar tu cuenta o no podras disfrutar de nuestros servicios.
          </div>
        </div>
      </div>';
       }
       include('html/overall/navbar.php');

?>
<!-- === bienvenida === -->
  <div class="row">
    <div class="col-lg-12">
      <div class="container">
        <div class="page-header">
          <h2>¡Hola, <?php echo $usr[$_SESSION['app_id']]['nom_usr']." ".$usr[$_SESSION['app_id']]['ape_usr']; ?>! <small>Bienvenid(a)</small></h2>
        </div>
      </div>
    </div>
  </div>
<!-- fin bienvenida -->
<!-- === Estado === -->
<div class="row">
  <div class="col-lg-12">
    <div class="container">
      <div class="row">
        <div class="col-lg-2">
            <img src="view/img/coca.svg" class='img-responsive img-circle' alt="" />
        </div>
        <div class="col-lg-10">
          <h2>Estado: <small>Ultimo servicio</small>
            <a href="?view=" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Nuevo</a>
            <a href="?view=" class=""><i class="fa fa-eye p-x-5"></i></a>
          </h2>
          <div class="progress progress-striped active">
            <div class="progress-bar progress-bar-danger" style="width: 20%"></div>
            <div class="progress-bar progress-bar-warning" style="width: 20%"></div>
            <div class="progress-bar progress-bar-info" style="width: 10%"></div>
            <div class="progress-bar progress-bar-primary" style="width: 10%"></div>
            <div class="progress-bar progress-bar-success" style="width: 10%"></div>
          </div>
          <p>
            loreasdasdsadasdjsadasdasd
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- fin Estado -->
<!-- === Servicios === -->
<div class="row">
  <div class="col-lg-12">
    <div class="container">
      <div class="page-header">
        <h1 class="text-center">
          Últimos servicios
        </h1>
      </div>
      <div class="row">
        <div class="col-lg-4">
            <div class="thumbnail">
              <img src="view/img/servi.jpg" class='img-responsive img-rounded' alt="...">
              <div class="caption">
                <h3>Thumbnail label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
              </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="thumbnail">
              <img src="view/img/servi.jpg" class='img-responsive img-rounded' alt="...">
              <div class="caption">
                <h3>Thumbnail label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
              </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="thumbnail">
              <img src="view/img/servi.jpg" class='img-responsive img-rounded' alt="...">
              <div class="caption">
                <h3>Thumbnail label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- fin servicios -->

 <?php
     include("html/overall/footer.php");
   } else {
     header("location: index.php");
   }
  ?>
