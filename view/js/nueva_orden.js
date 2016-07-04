__('boton_ordenar').onclick = function () {
	 /* body... */
	 var servicio = v('servicio'),
	  	di_servicio = v('di_servicio'),
		 	fe_servicio = v('fe_servicio'),
		  nota_servicio = v('nota_servicio'),
			alerta,form,conexion,
			ho_servicio = v('ho_servicio');

	 if (servicio === 0 || di_servicio === '' || fe_servicio === '' || ho_servicio === ''){
		 console.log('entra y estan vacios');
		alerta = '<div class="alert alert-dismissible alert-danger">';
		alerta += '<button type="button" class="close" data-dismiss="alert">&times;</button>';
		alerta += '<strong>Oh snap!</strong> try submitting again.</div>';
		__('alertar').innerHTML = alerta;
		ocultarAlert();
	 } else {
	 	// verificar que la fecha no sea la de ayer
		form = 'cat='+servicio+'&dirS='+di_servicio+'&fecS='+fe_servicio+' '+ho_servicio+'&nota='+nota_servicio;
		console.log(form);

		conexion = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
		conexion.onreadystatechange = function() {
			if (conexion.readyState == 4 && conexion.status == 200) {
				if (conexion.responseText == 1) {
					alerta = '<div class="alert alert-dismissible alert-success">';
					alerta += '<strong>Success!</strong> Servicio recivido.</div>';
					__('alertar').innerHTML = alerta;
					window.location = '?view=on';
				} else {
					__('alertar').innerHTML = conexion.responseText;
				}
			} else {
				alerta = '<div class="alert alert-dismissible alert-info">';
				alerta += '<strong>Cargando!</strong></div>';
				__('alertar').innerHTML = alerta;
			}

		};
		conexion.open("POST","ajax.php?mode=news",true);
		conexion.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		conexion.send(form);
	 }
};
