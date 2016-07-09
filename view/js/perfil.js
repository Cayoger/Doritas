__('updateD').onclick = function() {

  var doc = v('numb_doc'),
      nam = v('name'),
      lnam = v('lname'),
      tipo = document.getElementById('tipo_doc').value,
      result,tipoD,conexion,form;
  if (nam === '' || lnam === '' || doc.length === 0) {
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
            __('_AJAX_PERFIL_').innerHTML = result;
            location.reload();
          } else {
            __('_AJAX_PERFIL_').innerHTML = conexion.responseText;
          }
        } else {
          result = '<div class="alert alert-info" role="alert">';
          result += '<i class="fa fa-spinner fa-pulse"></i> <strong>Cargando...</strong>';
          result += '</div>';
          __('_AJAX_PERFIL_').innerHTML = result;
        }
      };
      conexion.open('POST','ajax.php?mode=datos',true);
      conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
      conexion.send(form);
    }
  }

};

__('updateL').onclick = function() {
  var conexion,result,tel,cel,dir,pais,dept,city,form;

  tel = v('tel');
  cel = v('cel');
  dir = v('dir');
  pais = v('pais');
  dept = v('departamento');
  city = v('cuidad');

  console.log(tel+' '+cel+' '+dir+' '+pais+' '+dept+' '+city);

  if (tel.length === 0 && cel.length === 0) {
    result = '<div class="alert alert-warning" role="alert">';
    result += '<i class="fa fa-exclamation"></i> <strong>Warning: </strong>No tenemos numeros de contacto.';
    result += '</div>';
    __('_AJAX_PERFIL_').innerHTML = result;
  } else {
    form = "tel="+tel+"&cel="+cel+"&pais="+pais+"&dept="+dept+"&ciud="+city+"&dir="+dir;

    conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    conexion.onreadystatechange = function() {
      if (conexion.readyState == 4 && conexion.status == 200) {
        if (conexion.responseText == 1) {
          result = '<div class="alert alert-success" role="alert">';
          result += '<i class="fa fa-check"></i> <strong>Success: </strong>Listo.';
          result += '</div>';
          __('_AJAX_PERFIL_').innerHTML = result;
          location.reload();
        } else {
          __('_AJAX_PERFIL_').innerHTML = conexion.responseText;
        }
      } else if (conexion.readyState != 4) {
        result = '<div class="alert alert-info" role="alert">';
        result += '<i class="fa fa-spinner fa-pulse"></i> <strong>Actualizando...</strong>';
        result += '</div>';
        __('_AJAX_PERFIL_').innerHTML = result;
      }
    };
    conexion.open('POST','ajax.php?mode=location',true);
    conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    conexion.send(form);
  }
};

__('updateC').onclick = function() {
  //creamos las varibles
  var conexion, result, mail, pass, valida;
  // les damos valores
  mail = v('mail');
  //preguntamos si las password de formulario coinciden
  valida = v('pass') == v('passv') ? true : false;

  if (valida) {
    pass = v('pass');
    console.log(mail+' '+pass);
  } else{
    console.log('mal');
  }

};
