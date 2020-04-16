function agregaform(datos){
    d=datos.split('||');
	$('#idsolicitudU').val(d[0]);//NAC Y DEF
	$('#idsolicitudMU').val(d[0]);// MAT Y UEH
	$('#anosolicitudU').val(d[1]);//NAC Y DEF
	$('#anosolicitudMU').val(d[1]);// MAT Y UEH
	$('#tipoactaU').val(d[2]);//NAC Y DEF
	$('#tipoactaMU').val(d[2]);// MAT Y UEH
	
	$('#nombre1U').val(d[3]);//NAC Y DEF
	$('#nombre1MU').val(d[3]);// MAT Y UEH
	$('#nombre2U').val(d[4]);//NAC Y DEF
	$('#nombre2MU').val(d[4]);// MAT Y UEH
	$('#apellido1U').val(d[5]);//NAC Y DEFV
	$('#apellido1MU').val(d[5]);// MAT Y UEH
	$('#apellido2U').val(d[6]);//NAC Y DEF
	$('#apellido2MU').val(d[6]);// MAT Y UEH
	$('#fechaactaU').val(d[7]);// MAT Y UEH
	$('#fechaactaMU').val(d[7]);// MAT Y UEH
	$('#nactaU').val(d[8]);// MAT Y UEH
	$('#nactaMU').val(d[8]);// MAT Y UEH
	$('#ntomoU').val(d[9]);// MAT Y UEH
	$('#ntomoMU').val(d[9]);// MAT Y UEH
	$('#nombre1esposaMU').val(d[10]);// MAT Y UEH
	$('#nombre2esposaMU').val(d[11]);// MAT Y UEH
	$('#apellido1esposaMU').val(d[12]);// MAT Y UEH
	$('#apellido2esposaMU').val(d[13]);// MAT Y UEH
	

	
}
function agregaformEliminar(datosE){
    d=datosE.split('||');
	$('#idsolicitudE').val(d[0]);
	$('#anosolicitudE').val(d[1]);
	$('#tipoactaE').val(d[2]);
	$('#nombreE').val(d[3]);
    $('#apellidoE').val(d[4]);


	
}
function agregaFormAsignarActa(datos){
    d=datos.split('||');
	$('#idsolicitudAsig').val(d[0]);
	$('#anosolicitudAsig').val(d[1]);
	$('#usuarious').val(d[2]);	
	$('#nombreus').val(d[3]);	
	$('#apellidous').val(d[4]);	
}


function actualizaDatosNacDef(){
	idsolicitud=$('#idsolicitudU').val();
	anosolicitud=$('#anosolicitudU').val();
	tipoacta=$('#tipoactaU').val();
	nacta=$('#nactaU').val();
	ntomo=$('#ntomoU').val();
	fechaacta=$('#fechaactaU').val();
	nombre1=$('#nombre1U').val();
	nombre2=$('#nombre2U').val();
	apellido1=$('#apellido1U').val();
	apellido2=$('#apellido2U').val();
	
	cadena= "idsolicitud=" + idsolicitud +
			"&anosolicitud=" + anosolicitud + 
			"&tipoacta=" + tipoacta + 
			"&nacta=" + nacta + 
			"&ntomo=" + ntomo +
			"&fechaacta=" + fechaacta +
			"&nombre1=" + nombre1 +
			"&nombre2=" + nombre2 +
			"&apellido1=" + apellido1 +
			"&apellido2=" + apellido2;
	$.ajax({
		type:"POST",
		url:"../controlador/actualizaDatosSolicitudNacDef.php",
		data:cadena,
		success:function(r){
			if(r==="1"){
				alert("Se actualizo con exito la solicitud de: "+tipoacta);
				location.reload();
			}else{
				alert("No se actualizo la solicitud");
				location.reload();
			}
		}
	});

}

function actualizaDatosMatUeh(){
	idsolicitud=$('#idsolicitudMU').val();
	anosolicitud=$('#anosolicitudMU').val();
	tipoacta=$('#tipoactaMU').val();
	nacta=$('#nactaMU').val();
	ntomo=$('#ntomoMU').val();
	fechaacta=$('#fechaactaMU').val();
	//matri ueh
	nombre1esposo=$('#nombre1MU').val();
	nombre2esposo=$('#nombre2MU').val();
	apellido1esposo=$('#apellido1MU').val();
	apellido2esposo=$('#apellido2MU').val();
	nombre1esposa=$('#nombre1esposaMU').val();
	nombre2esposa=$('#nombre2esposaMU').val();
	apellido1esposa=$('#apellido1esposaMU').val();
	apellido2esposa=$('#apellido2esposaMU').val();
	
	
	cadena= "idsolicitud=" + idsolicitud +
			"&anosolicitud=" + anosolicitud + 
			"&tipoacta=" + tipoacta + 
			"&nacta=" + nacta + 
			"&ntomo=" + ntomo +
			"&fechaacta=" + fechaacta +
			"&nombre1esposo=" + nombre1esposo +
			"&nombre2esposo=" + nombre2esposo +
			"&apellido1esposo=" + apellido1esposo +
			"&apellido2esposo=" + apellido2esposo +
			"&nombre1esposa=" + nombre1esposa +
			"&nombre2esposa=" + nombre2esposa +
			"&apellido1esposa=" + apellido1esposa +
			"&apellido2esposa=" + apellido2esposa;
	$.ajax({
		type:"POST",
		url:"../controlador/actualizaDatosSolicitudMatUeh.php",
		data:cadena,
		success:function(r){
			
			if(r==="1"){
				alert("Se actualizo con exito la solicitud de: "+tipoacta);
				location.reload();
			}else{
				alert("No se actualizo la solicitud");
				location.reload();
			}
		}
	});

}

function eliminarDatosSolicitud(){
	idsolicitud=$('#idsolicitudE').val();
	anosolicitud=$('#anosolicitudE').val();	
	cadena= "idsolicitud=" + idsolicitud +
			"&anosolicitud=" + anosolicitud;
	$.ajax({
		type:"POST",
		url:"../controlador/eliminarDatosSolicitud.php",
		data:cadena,
		success:function(r){
			
			if(r==="1"){
				alert("Se elimino con exito la solicitud");
				location.reload();
			}else{
				alert("No se elimino la solicitud");
				location.reload();
			}
		}
	});

}

function asignarActas(){
	var data = new FormData($('#form')[0]);
	$.ajax({
		type:"POST",
		url:"../controlador/asignarActas.php",
        data: data, 			  // Data sent to server, a set of key/value pairs (i.e. form fields and values)
		contentType: false,       // The content type used when sending data to the server.
		cache: false,             // To unable request pages to be cached
		processData:false, 
		success:function(data){
			if(data==="1"){
				alert("Se asigno el acta exitosamente");
				location.reload();
			}else{
				alert("No se asigno el acta, la extension debe ser pdf");
				location.reload();
			}
		}
		
	});

}