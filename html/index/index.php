
<?php include('html/overall/header.php'); ?>
<div class="loginBg"></div>
<div class="container-fluid">
  <div class="row">
    <div class="col-lg-3 col-md-3 col-md-push-1 col-lg-push-1 text-center">
      <ul class="nav nav-tabs" role="tablist">
        <li role="login" class="active"><a href="#log" aria-controls="log" role="tab" data-toggle="tab">Iniciar <i class="fa fa-sign-in"></i></a></li>
        <li role="registro"><a href="#reg" aria-controls="reg" role="tab" data-toggle="tab">Registro <i class="fa fa-user-plus"></i></a></li>
      </ul>
      <div class="tab-content">
        <!-- login -->
        <div id="log" role="tabpanel" class="tab-pane active" rol="form" onkeypress='return pulseEnter(event,"log")'>
          <!-- <img src="view/img/coca.svg" alt="" class="imgLogo"/> -->
          <h2>Iniciar sesion</h2>
          <div class="form-group">
            <input type="text" class="form-control" id="user" placeholder="Correo"/>
          </div>
          <div class="form-group">
            <input type="password" class="form-control" id="pass" placeholder="Contraseña"/>
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" id="rename"> Recordarme
            </label>
          </div>
          <button class="btn btn-success pull-right" id="login" onclick="goLog('log')">Iniciar <i class="fa fa-sign-in"></i></button>
        </div>
        <!-- registro -->
        <div role="tabpanel" class="tab-pane" id="reg" onkeypress="return pulseEnter(event,'reg')">
            <h2>Registro</h2>
            <div class="form-group">
              <input type="text" id="name" class="form-control" id="pass" placeholder="Nombre"/>
            </div>
            <div class="form-group">
              <input type="text" id="last_name" class="form-control" placeholder="Apellido"/>
            </div>
            <div class="form-group">
              <input type="email" id="mail" class="form-control" placeholder="Correo" required/>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="pass1" placeholder="Contraseña"/>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="pass2" placeholder="Contraseña"/>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" id="term" value=""> Acepto los <a href="?view=terminos">Terminos y condiciones</a>
              </label>
            </div>
            <button class="btn btn-info pull-right" onclick="onLog('reg')">Registrar</button>
        </div>
      </div>
    </div>
  </div><!-- fin row -->
  <div class="row">
    <div class="col-lg-3 col-md-3 col-md-push-1 col-lg-push-1">
        <div id='_AJAX_LOGIN_'></div>
    </div>
  </div>
</div>
<script src='view/js/login.js'></script>
<?php include("html/overall/footer.php"); ?>
