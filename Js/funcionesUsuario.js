function agregaform(datos){
    d=datos.split('||');
	$('#idusuarioU').val(d[0]);
	$('#tipodocumentoU').val(d[1]);
	$('#cedulaU').val(d[2]);
	$('#nombreU').val(d[3]);
	$('#apellidoU').val(d[4]);
	$('#correoU').val(d[5]);
}
function agregaformEliminar(datosE){
    d=datosE.split('||');
	$('#idusuarioE').val(d[0]);
	$('#tipodocumentoE').val(d[1]);
	$('#cedulaE').val(d[2]);
	$('#nombreE').val(d[3]);
	$('#apellidoE').val(d[4]);
	$('#correoE').val(d[5]);	
}
function guardarUsuario(tipodocumento,cedula,nombre,apellido,usuario,correo,clave,tipousuario){
	cadena="tipodocumento=" + tipodocumento + 
			"&cedula=" + cedula +
			"&nombre=" + nombre +
			"&apellido=" + apellido +
			"&usuario=" + usuario +
			"&correo=" + correo +
			"&tipousuario=" + tipousuario +
			"&clave=" + clave;
	$.ajax({
		type:"POST",
		url:"../controlador/insertarUsuarioAdministrador.php",
		data:cadena,
		success:function(r){
			if(r==="1"){
			alert("Se agrego el usuario con exito");
				location.reload();
			}else{
				alert("No se agrego el usuario porque coincide un nombre de usuario, o el correo ya existe");
				location.reload();
			}
		}
	});

}
function actualizadatos(){
	idusuario=$('#idusuarioU').val();
	tipodocumento=$('#tipodocumentoU').val();
	cedula=$('#cedulaU').val();
	nombre=$('#nombreU').val();
	apellido=$('#apellidoU').val();
	correo=$('#correoU').val();
	cadena= "idusuario=" + idusuario +
			"&tipodocumento=" + tipodocumento + 
			"&cedula=" + cedula + 
			"&nombre=" + nombre + 
			"&apellido=" + apellido +
			"&correo=" + correo;
	$.ajax({
		type:"POST",
		url:"../controlador/modificarDatosDeUsuarioAdministrador.php",
		data:cadena,
		success:function(r){
			if(r==="1"){
				alert("Se modificarn los datos del usuario con exito");
				location.reload();
			}else{
				alert("No se modificarn los datos del usuario");
				location.reload();
			}
		}
	});

}
function eliminarDatos(){
	idusuario=$('#idusuarioE').val();
	activarDesactivar=$('#activarDesactivar').val();
	cadena= "idusuario=" + idusuario+
			"&activarDesactivar=" + activarDesactivar;
	$.ajax({
		type:"POST",
		url:"../controlador/eliminarDatosUsuarios.php",
		data:cadena,
		success:function(r){
			
			if(r==="1"){
				alert("Se suspendio o se activo la cuenta de usuario con exito");
				location.reload();
			}else{
				alert("No se suspendio la cuenta de usuario");
				location.reload();
			}
		}
	});

}