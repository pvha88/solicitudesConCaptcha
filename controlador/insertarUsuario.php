<?php

   if(isset($_POST)){
            include_once ('../modelo/claseUsuario.php');       
            $objusuario = new claseUsuario();
			$tipodocumento = strtoupper($_POST["tipodocumento"]);
			$cedula = strtoupper($_POST["cedula"]);
			$nombre = strtoupper($_POST["nombre"]);
			$apellido = strtoupper($_POST["apellido"]);
			$correo = $_POST["correo"];
			$clave = $_POST["clave"];
			$usuario = strtolower(chop($_POST["usuario"]));
			$tipousuario = "USUARIO";
			$guardo = $objusuario->insertarUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo,$clave,$tipousuario,$usuario);                    
   }
?>

