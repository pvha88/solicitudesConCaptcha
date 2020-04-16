<?php
   if(isset($_POST["idusuario"])){
            include_once ('../modelo/claseUsuarioAdministrador.php');       
            $objusuario = new claseUsuarioAdministrable();
			$idusuario = $_POST["idusuario"];
			$activarDesactivar = $_POST["activarDesactivar"];
			$guardo = $objusuario->eliminarDatosDeUsuario($idusuario,$activarDesactivar);
			if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}              
   }
?>