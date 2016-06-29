function goLog(tipo){
  var form, user, name, name2, pass, pass2, email, term, session, conexion, result;
  if (tipo == 'log') {/*login*/
    user = v('user');
    pass = v('pass');
    session = check('rename');
    form = "user="+user+"&pass="+pass+"&session="+session;
    conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    //Aqui comienza el ajax
    conexion.onreadystatechange = function() {
      if (conexion.readyState == 4 && conexion.status == 200) {
        if (conexion.responseText == 1) {
          result = '<div class="alert alert-success" role="alert">';
          result += '<i class="fa fa-check"></i> <strong>Success:</strong> Bienvenido.';
          result += '</div>';
          __('_AJAX_LOGIN_').innerHTML = result;
          window.location = "?view=on";
        } else {
          __('_AJAX_LOGIN_').innerHTML = conexion.responseText;
          ocultarAlert();
        }
      } else if (conexion.readyState != 4) {
        result = '<div class="alert alert-info" role="alert">';
        result += '<i class="fa fa-spinner fa-pulse"></i> <strong>Cargando...</strong>';
        result += '</div>';
        __('_AJAX_LOGIN_').innerHTML = result;
      }
    };

    conexion.open("POST","ajax.php?mode=login",true);
    conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    conexion.send(form);

  } else if (tipo == 'reg') {/*Registro*/
    name = v('name');
    lname = v('last_name');
    pass = v('pass1');
    pass2 = v('pass2');
    email = v('mail');
    term = check('term');
    if (!term) {
      result = '<div class="alert alert-warning" role="alert">';
      result +='<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
      result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Debes aceptar los terminos y condiciones.';
      result += '</div>';
    } else if (pass != pass2) {
      result = '<div class="alert alert-warning" role="alert">';
      result +='<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
      result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Contraseña distintas.';
      result += '</div>';
    } else {
      if (name.length === 0 || lname.length === 0) {
        result = '<div class="alert alert-warning" role="alert">';
        result +='<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
        result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Campos vacios.';
        result += '</div>';
      } else if (pass.length === 0 || pass2.length === 0) {
        result = '<div class="alert alert-warning" role="alert">';
        result +='<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
        result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Campos vacios.';
        result += '</div>';
      } else if (!/^\w+([\.\+\-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(email)) {
        result = '<div class="alert alert-warning" role="alert">';
        result +='<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
        result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Campos vacios.';
        result += '</div>';
      } else {
        form = "name="+name+"&lname="+lname+"&pass="+pass+"&email="+email;
        conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
        //Aqui comienza el ajax
        conexion.onreadystatechange = function() {
          if (conexion.readyState == 4 && conexion.status == 200) {
            if (conexion.responseText == 1) {
              result = '<div class="alert alert-success" role="alert">';
              result += '<i class="fa fa-check"></i> <strong>Success:</strong> Registro exitoso.';
              result += '</div>';
            } else {
              __('_AJAX_LOGIN_').innerHTML = conexion.responseText;
            }
          } else if (conexion.readyState != 4) {
            result = '<div class="alert alert-info" role="alert">';
            result += '<i class="fa fa-spinner fa-pulse"></i> <strong>Prosesando...</strong>';
            result += '</div>';
          }
        };

        conexion.open("POST","ajax.php?mode=reg",true);
        conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        conexion.send(form);
      }
    }//fin del if term
    __('_AJAX_LOGIN_').innerHTML = result;
    ocultarAlert();
  } else {
    console.log('Distinto tipo');
  }
}

function pulseEnter(e,t){
  if (e.keyCode == 13) {
      goLog(t);
  }
}
