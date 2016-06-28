<?php

  if (isset($_SESSION['app_id'])) {
    include('html/overall/header.php');
 ?>

<div id='container'>
  <?php if ($usr[$_SESSION['app_id']]['id_est'] == 0) {
  echo '<div class="row">
    <div class="col-lg-12">
      <div class="alert alert-danger" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong><i class="fa fa-exclamation"></i> Alerta!</strong> Debes de activar tu cuenta o no podras disfrutar de nuestros servicios.
      </div>
    </div>
  </div>';
   } ?>
   <div class="row">
     <div class="col-lg-12">
       <nav class="navbar navbar-default">
        <div class="container-fluid">
          <!-- inicio del view movil -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menuDoritas" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="?view=on"><i class="fa fa-home"></i> Inicio</a>
          </div>
          <!-- fin del view movil y inicio de container menu -->

          <div class="collapse navbar-collapse" id="menuDoritas">
            <!-- <ul class="nav navbar-nav">
              <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
              <li><a href="#">Link</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default">Submit</button>
            </form> -->
            <ul class="nav navbar-nav navbar-right">
              <li></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-cogs"></i><span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="?view=logout"><i class="fa fa-sign-out"></i> Cerrar sesion</a></li>
                </ul>
              </li>
            </ul>
          </div>

        </div><!--fin container menu-->
      </nav>
     </div>
   </div>
  <div class="row">
    <div class="col-lg-3">
       welcome <?php echo $usr[$_SESSION['app_id']]['nom_usr']; ?> <a href='?view=logout'>Cerrar session</a>
    </div>
  </div>
</div>

<?php
    include("html/overall/footer.php");
  } else {
    header("location: index.php");
  }


 ?>
