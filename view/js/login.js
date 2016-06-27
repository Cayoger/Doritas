function goLog(tipo){
  var form, user, name, name2, pass, pass2, email, term, session, conexion, result;
  if (tipo == 'log') {/*login*/
    user = __('user').value;
    pass = __('pass').value;
    session = __('rename').checked ? true : false;
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
    
  } else {
    console.log('Distinto tipo');
  }

}

function pulseEnter(e,t){
  if (e.keyCode == 13) {
      goLog(t);
  }
}
