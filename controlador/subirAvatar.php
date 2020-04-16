<?php 
if(isset($_POST)){
			include_once ('../modelo/claseUsuario.php');       
            $objusuario = new claseUsuario();
			$nombre_img = $_FILES['imagen']['name'];
			$source=$_FILES['imagen']['tmp_name'];
			$idusuario = $_POST["idusuario"];
			$usuario = $_POST["usuario"];
			// Recibo los datos de la imagen
			$directorio = "../imagenesPerfil/usuario_".$usuario."";
				//Si existe imagen y tiene un tamaño correcto
				if (($nombre_img == !NULL) && ($_FILES['imagen']['size'] <= 5000000)) 
				{
				   //indicamos los formatos que permitimos subir a nuestro servidor
				   if (($_FILES["imagen"]["type"] == "image/jpeg") || 
				       ($_FILES["imagen"]["type"] == "image/jpg")  || 
					   ($_FILES["imagen"]["type"] == "image/png"))
				   {
					    //Validamos si la ruta de destino existe, en caso de no existir la creamos
						if(!file_exists($directorio)){
							mkdir($directorio, 0777, true) or die("No se puede crear el directorio de extracci&oacute;n comuniquese con el administrador");	
						}
							$dir=opendir($directorio); //Abrimos el directorio de destino
							$rutaImagen = $directorio.'/'.$nombre_img; //Indicamos la ruta de destino, así como el nombre del archivo
							//Ruta donde se guardarán las imágenes que subamos
							//Movemos y validamos que el archivo se haya cargado correctamente
							move_uploaded_file($source, $rutaImagen);
							$guardo = $objusuario->cambiarAvatar($idusuario,$rutaImagen);
							
					} 
					else 
					{
					   //si no cumple con el formato
						echo ' <script language="javascript">alert("No se puede subir una imagen con ese formato");</script> ';
					    echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
					}
				} 
				else 
				{
				   //si existe la variable pero se pasa del tamaño permitido
				   if($nombre_img == !NULL) {
				   	echo ' <script language="javascript">alert("La imagen es demasiado grande");</script> ';
					echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
				   }
				}
}
?>