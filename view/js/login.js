function goLogin(){
  var form, user, pass,session, conexion, result;
  user = __('user').value;
  pass = __('pass').value;
  session = __('rename').checked ? true : false;
  console.log(session);
  form = "user="+user+"&pass="+pass+"&session="+session;
  conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXoObject('Microsoft.XMLHTTP');
  conexion.onreadystatechange = function() {
    if (conexion.readyState == 4 && conexion.status == 200) {
      if (conexion.responseText == 1) {
        result = '<span class="alertSuccess">';
        result += '<p><i class="fa fa-check"></i> <strong>Success:</strong> Bienvenido.</p>';
        result += '</span>';
        __('_AJAX_LOGIN_').innerHTML = result;
        window.location = "?view=on";
      } else {
        __('_AJAX_LOGIN_').innerHTML = conexion.responseText;
      }
    } else if (conexion.readyState != 4) {
      result = '<span class="alertInfo">';
      result += '<p><i class="fa fa-spinner fa-pulse"></i> <strong>Cargando...</strong></p>';
      result += '</span>';
      __('_AJAX_LOGIN_').innerHTML = result;
    }
  };

  conexion.open("POST","ajax.php?mode=login",true);
  conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  conexion.send(form);
}


function pulseEnter(e){
  if (e.keyCode == 13) {
    goLogin();
  }
}
