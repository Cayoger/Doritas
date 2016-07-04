__('updateD').onclick = function() {

  var doc = v('numb_doc'),
      nam = v('name'),
      lnam = v('lname'),
      tipo = document.getElementById('tipo_doc').value,
      result,tipoD,conexion,form;
  if (name.length === 0 || lname.length === 0 || doc.length === 0) {
    result = '<div class="alert alert-warning" role="alert">';
    result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Campos vacios.';
    result += '</div>';
    __('_AJAX_PERFIL_').innerHTML = result;
    ocultarAlert();
  } else {
    if (tipo == 'doc') {
      result = '<div class="alert alert-warning" role="alert">';
      result += '<i class="fa fa-exclamation-triangle"></i> <strong>Warning:</strong> Seleccione un tipo de documento.';
      result += '</div>';
      __('_AJAX_PERFIL_').innerHTML = result;
      ocultarAlert();
    } else {
      tipoD = tipo == 'cc' ? 1 : 2;
      form = 'tipo='+tipoD+'&num='+doc+'&name='+nam+'&lname='+lnam;
      conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
      conexion.onreadystatechange = function() {
        if (conexion.readyState == 4 && conexion.status == 200) {
          if (conexion.responseText == 1) {
            result = '<div class="alert alert-success" role="alert">';
            result += '<i class="fa fa-check"></i> <strong>SUCCESS:</strong> ACTUALIZADO.';
            result += '</div>';
          } else {
            __('_AJAX_PERFIL_').innerHTML = conexion.responseText;
          }
        } else {
          result = '<div class="alert alert-info" role="alert">';
          result += '<i class="fa fa-spinner fa-pulse"></i> <strong>Cargando...</strong>';
          result += '</div>';
          __('_AJAX_PERFIL_').innerHTML = result;
        }

        conexion.open('POST','ajax?mode=datos',true);
        conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        conexion.send(form);

      };
    }
  }

};
