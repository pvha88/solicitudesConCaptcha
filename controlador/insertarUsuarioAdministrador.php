<?php
 
   if(isset($_POST)){
            include_once ('../modelo/claseUsuarioAdministrador.php');       
            $objusuario = new claseUsuarioAdministrable();
			$tipodocumento = pg_real_escape_string(strtoupper($_POST["tipodocumento"]));
			$cedula = pg_real_escape_string(strtoupper($_POST["cedula"]));
			$nombre = pg_real_escape_string(strtoupper($_POST["nombre"]));
			$apellido = pg_real_escape_string(strtoupper($_POST["apellido"]));
			$correo = pg_real_escape_string($_POST["correo"]);
			$clave = pg_real_escape_string($_POST["clave"]);
			$usuario = pg_real_escape_string(strtolower(chop($_POST["usuario"])));
			$tipousuario = pg_real_escape_string($_POST["tipousuario"]);
			$guardo = $objusuario->insertarUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo,$clave,$tipousuario,$usuario); 
			if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}              
   }
?>