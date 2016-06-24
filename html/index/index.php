
  <?php include('html/overall/header.html'); ?>
    <div class="backimg">

    </div>
    <div class="login">
      <img src="view/img/coca.svg" alt="" class="logolog"/>
      <input type="text" id="user" placeholder="Cuenta"/>
      <input type="password" id="pass" placeholder="Contraseña"/>
      <button rol="button" id="login">Iniciar <i class="fa fa-sign-in"></i></button>
      <a href="?view=registro">Registrar!</a>

      <div id='_AJAX_LOGIN_'>
        <!-- <span class="alertSuccess">
          <p>
            <i class="fa fa-exclamation"></i> <strong>Error:</strong> Ocurrio un error.
            <i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Espere...
            <i class="fa fa-check"></i> <strong>Success:</strong> Bienvenido.
          </p>
        </span> -->
      </div>
    </div>


  <?php include("html/overall/footer.php"); ?>
