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
     <a class="navbar-brand" href="?view=on"><i class="fa fa-home"></i> Doritas</a>
   </div>
   <!-- fin del view movil y inicio de container menu -->

   <div class="collapse navbar-collapse" id="menuDoritas">
     <ul class="nav navbar-nav">
       <!-- left -->
       <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
           Cliente <span class="caret"></span>
         </a>
         <ul class="dropdown-menu">
           <li class="dropdown-header">Servicios</li>
           <li role="separator" class="divider"></li>
           <li><a href="#">Nuevo</a></li>
           <li><a href="#">Pedidos</a></li>
           <!-- <li><a href="#">Something else here</a></li>
           <li role="separator" class="divider"></li>
           <li><a href="#">Separated link</a></li>
           <li role="separator" class="divider"></li>
           <li><a href="#">One more separated link</a></li> -->
         </ul>
       </li>
     </ul>
     <!-- fin left -->
     <!-- right -->
     <ul class="nav navbar-nav navbar-right">
       <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $usr[$_SESSION['app_id']]['nom_usr']." ".$usr[$_SESSION['app_id']]['ape_usr']; ?> <i class="fa fa-cogs"></i><span class="caret"></span></a>
         <ul class="dropdown-menu">
           <li><a href="#">Cuenta</a></li>
           <li><a href="#">Option</a></li>
           <li><a href="#">Option</a></li>
           <li role="separator" class="divider"></li>
           <li><a href="?view=logout"><i class="fa fa-sign-out"></i> Cerrar sesion</a></li>
         </ul>
       </li>
     </ul>
     <form class="navbar-form navbar-right" role="search">
       <div class="input-group">
         <input type="text" class="form-control" placeholder="Buscar...">
         <span class="input-group-btn">
           <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
         </span>
       </div>
     </form>
     <!-- fin right -->
   </div>
 </div><!--fin container menu-->
</nav>
<div class="bg-home">

</div>
<div class="container-fluid">
