<?php
session_start();
   if(isset($_POST)){
	 
	   if($_POST["captcha"]==$_SESSION["digit"]){
            include_once ('../modelo/claseUsuario.php');       
            $objusuario = new claseUsuario();
			$usuario = strtolower(chop($_POST["usuario"]));
			$clave =   $_POST["clave"];
			$guardo = $objusuario->autenticarUsuario($usuario, $clave);  
		}
		else{
            if($_POST["captcha"]!=$_SESSION["digit"]){
				 echo "<script language='JavaScript'> alert('El texto no coincide con lo caracteres de la imagen') </script>";
				 echo "<meta http-equiv='refresh' content='0; url=../index.php'>";
                
         }
      }                 
   }                                  
?>

