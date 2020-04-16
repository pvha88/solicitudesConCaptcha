<?php
// Inicias sesion
session_start();
/*include_once("../seguridad/evitar_inyecciones/inyecciones.php");
include_once("../seguridad/evitar_sessiones/seguridad.php");
$seguridad=seguridad($_SESSION['aplicacion']);*/
if ( !isset ( $_SESSION['usuario']) && !isset ( $_SESSION['clave'])){
    session_destroy();
    header("Location: ../index.php");
}
if(isset($_GET['cerrar']) && $_GET['cerrar'] == 'true')
{
    $_SESSION['usuario'] = NULL;
    $_SESSION['clave'] = NULL;
    unset($_SESSION['usuario']);
    unset($_SESSION['clave']);
    unset($_SESSION);
    header("Location: ../index.php");		
}	
?>
