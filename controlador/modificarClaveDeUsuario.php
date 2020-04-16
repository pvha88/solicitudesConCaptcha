<?php
   if(isset($_POST["clave"])){
            include_once ('../modelo/claseUsuario.php');       
            $objusuario = new claseUsuario();
            $correo = $_POST["correo"];
			$clave = $_POST["clave"];
			$cambiaPass = $_POST["cambiaPass"];
			$usuario = strtolower(chop($_POST["usuario"]));
			$guardo = $objusuario->modificarClaveDeUsuario($correo,$clave,$usuario,$cambiaPass);
			}
?>

