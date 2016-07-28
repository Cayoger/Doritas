
<nav class="navbar navbar-default navbar-fixed-top">
 <div class="container">
   <!-- inicio del view movil -->
   <div class="navbar-header">
     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menuDoritas" aria-expanded="false">
       <span class="sr-only">Toggle navigation</span>
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
       <span class="icon-bar"></span>
     </button>
     <a class="navbar-brand" href="?view=on"><i class="fa fa-home"></i> Doritas</a>
   </div>
   <!-- fin del view movil y inicio de container menu -->

   <div class="collapse navbar-collapse" id="menuDoritas">
     <ul class="nav navbar-nav">
       <!-- left -->
       <?php
        if ($usr[$_SESSION['app_id']]['id_per'] == 1) {
          # Asociado
          echo '
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              Cliente <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="dropdown-header">Servicios</li>
              <li role="separator" class="divider"></li>
              <li><a href="?view=nPed">Nuevo</a></li>
              <li><a href="?view=vPed">Pedidos</a></li>
            </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              Asociarte <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li><a href="?view=nPro">Mirar Propuestas</a></li>
              <li><a href="?view=vPro">Ver tus propuestas</a></li>
            </ul>
          </li>';
        } else if ($usr[$_SESSION['app_id']]['id_per'] == 2) {
          # Validador
        } else if ($usr[$_SESSION['app_id']]['id_per'] == 3) {
          # Admin
        } else {
          # cliente
          echo '<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              Cliente <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="dropdown-header">Servicios</li>
              <li role="separator" class="divider"></li>
              <li><a href="?view=nPed">Nuevo pedido</a></li>
              <li><a href="?view=vPed">Lista de pedidos</a></li>
            </ul>
          </li>';
        }
        ?>
     </ul>
     <!-- fin left -->
     <!-- right -->
     <ul class="nav navbar-nav navbar-right">
       <li class="active"><a><span class="fa fa-bell"></span>
        <?php if ($usr[$_SESSION['app_id']]['cel_usr'] == 0|| $usr[$_SESSION['app_id']]['tel_usr'] == 0) {
          echo '<span class="badge">1</span></a></a>';
        } else {
          echo '<span class="badge"></span></a></a>';
        }?>

       </li>
       <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
           <?php echo $usr[$_SESSION['app_id']]['nom_usr']." ".$usr[$_SESSION['app_id']]['ape_usr']; ?>
           | <i class="fa fa-cogs"></i><span class="caret"></span>
         </a>
         <ul class="dropdown-menu">
           <li><a href="?view=perfil"><i class="fa fa-cog"></i> Cuenta</a></li>
           <li role="separator" class="divider"></li>
           <li><a href="?view=logout"><i class="fa fa-sign-out"></i> Cerrar sesion</a></li>
         </ul>
       </li>
     </ul>
     <form class="navbar-form navbar-right" role="search">
       <div class="input-group">
         <input type="text" class="form-control" placeholder="Buscar..." disabled>
         <span class="input-group-btn">
           <button class="btn btn-info" type="button" disabled><i class="fa fa-search"></i></button>
         </span>
       </div>
     </form>
     <!-- fin right -->
   </div>
 </div><!--fin container menu-->
</nav>
<?php
if ($usr[$_SESSION['app_id']]['id_est'] == 0) {
 echo ' <div class="row m-t-50">
   <div class="col-lg-12">
     <div class="alert alert-danger" role="alert">
       <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       <strong><i class="fa fa-exclamation"></i> Alerta!</strong> Debes de activar tu cuenta o no podras disfrutar de nuestros servicios.
     </div>
   </div>
 </div>';
  }
 ?>
<!-- <div class="bg-home">

</div> -->
<div class="container-fluid">
