<?php
   if(isset($_POST["cedula"])){
            include_once ('../modelo/claseUsuarioAdministrador.php');       
            $objusuario = new claseUsuarioAdministrable();
            $tipodocumento = strtoupper($_POST["tipodocumento"]);
			$cedula = strtoupper($_POST["cedula"]);
			$nombre = strtoupper($_POST["nombre"]);
			$apellido = strtoupper($_POST["apellido"]);
			$correo = $_POST["correo"];
			$usuario = $_POST["usuario"];
			$idusuario = $_POST["idusuario"];
			$guardo = $objusuario->modificarDatosDeUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo, $idusuario);
			if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}              
   }
?>