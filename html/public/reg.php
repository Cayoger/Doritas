<?php include('html/overall/header.php'); ?>
<div id="conteiner">
<div class="regbg">
<div class="content">
  <div rol='form' class="reg">
    <h1>Registro</h1>
    <input type="text" id="name" class="formInput" placeholder="Nombre"/>
    <input type="text" id="last_name" class="formInput" placeholder="Apellido"/>
    <input type="email" id="mail" class="formInput" placeholder="Correo" required/>
    <input type="text" id="pass" class="formInput" placeholder="Contraseña"/>
    <input type="password" id="pass_2" class="formInput" placeholder="Confirmar Contraseña"/>
    <input type="checkbox" id="term" value=""> Acepto los <a href="?view=terminos" class="link-reverse">Terminos y condiciones</a>
    <button class="btn">Registrar</button>
    <a href="?view=index" class="link-reverse">Log in <i class="fa fa-sign-in"></i></a>
  </div>
</div>
</div>
</div>
<?php include("html/overall/footer.php"); ?>
