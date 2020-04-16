<?php
session_start();
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_FILES["imagen"]["type"])){
			include_once ('../modelo/claseSolicitud.php');       
            $objsolicitud = new claseSolicitud();
			$nombre_img = $_FILES['imagen']['name'];
			$source=$_FILES['imagen']['tmp_name'];
			$idsolicitud = $_POST["idsolicitud"];
			$anosolicitud = $_POST["anosolicitud"];
			$usuario = $_POST["usuario"];
			$cedulaUsuarioEntrega = $_SESSION['cedula'];
			$fecharepuestasoli = date('Y-m-d');
			$tipo = $_FILES["imagen"]["type"];
			 //Recibo los datos de la imagen
			$directorio = "../imagenesActas/usuario_".$usuario."";
				//Si existe imagen y tiene un tamaño correcto
				if (($nombre_img == !NULL) && ($_FILES['imagen']['size'] <= 5000000)) 
				{
				   //indicamos los formatos que permitimos subir a nuestro servidor
				   if (strpos($tipo, "pdf"))
				   {	

				   		$tipo = substr($tipo,  12, 10);
				   		$nombre_img = $usuario."-".$idsolicitud."-".$anosolicitud.".".$tipo;
					    //Validamos si la ruta de destino existe, en caso de no existir la creamos
						if(!file_exists($directorio)){
							mkdir($directorio, 0777, true) or die("No se puede crear el directorio de extracci&oacute;n comuniquese con el administrador");	
						}
							$dir=opendir($directorio); //Abrimos el directorio de destino
							$rutaImagen = $directorio.'/'.$nombre_img; //Indicamos la ruta de destino, así como el nombre del archivo
							//Ruta donde se guardarán las imágenes que subamos
							//Movemos y validamos que el archivo se haya cargado correctamente
							move_uploaded_file($source, $rutaImagen);
							$guardo = $objsolicitud->AsignarActa($idsolicitud, $anosolicitud, $rutaImagen,$cedulaUsuarioEntrega,$fecharepuestasoli);
							if($guardo){
									 echo"1";
								}else{
									 echo"0";
								}
							
					} 
					else 
					{
					   //si no cumple con el formato
					   echo "No se puede subir una imagen con ese formato ";
					}
				} 
				else 
				{
				   //si existe la variable pero se pasa del tamaño permitido
				   if($nombre_img == !NULL) echo "La imagen es demasiado grande "; 
				}
}
?>