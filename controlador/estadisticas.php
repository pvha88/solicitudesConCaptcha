<?php
session_start();
function estadistica($cedulaUsuarioEntrega){
include_once ('../modelo/claseSolicitud.php');       
	$objsolicitud = new claseSolicitud();
	$estadisticas = $objsolicitud->estadisticas($cedulaUsuarioEntrega);
	if($estadisticas){
		return $estadisticas;
	}else{
		return 0;
	}
}
?>