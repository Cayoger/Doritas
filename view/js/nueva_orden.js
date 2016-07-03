__('boton_ordenar').onclick = function () {
	 /* body... */ 
	 var servicio = v('servicio'), di_servicio = v('di_servicio'), fe_servicio = ('fe_servicio'), nota_servicio = v('nota_servicio'),alerta = '';
	 var ho_servicio = v('ho_servicio');
	 console.log('Valor de fecha 1: ' + fe_servicio);

	 if (servicio === 0 || di_servicio.length === 0 || fe_servicio == ''){
		console.log('Valor de fecha 2: ' + fe_servicio);

		alerta += '<div class="alert alert-dismissible alert-danger">';
		alerta += '<button type="button" class="close" data-dismiss="alert">&times;</button>';
		alerta += '<strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.</div>';
		__('alertar').innerHTML = alerta;

		ocultarAlert();	          
	 }else{
	 	// verificar que la fecha no sea la de ayer
	 	
	 	
	 }
};
