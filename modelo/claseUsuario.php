<?php
session_start();
include_once 'claseBase.php';
class claseUsuario extends claseBase {
    public function getTablePath() {
        return 'public.usuario';
    }

    public function getSequenceName() {
        return 'usuario_idusuario_seq';
    }

    public function getPrimaryKeyName() {
        return 'idusuario';
    }

    public function getLast() {
      
    }
	
    public function getNext() {
         
    }
    //////////////////////////
	
	public function insertarUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo,$clave,$tipousuario,$usuario){
		$consultaCorreo="SELECT * FROM usuario WHERE correo = '".$correo."'";
		$res = $this->query($consultaCorreo);
		$num = @pg_num_rows($res);
		if($num==0){
		//variables a insertar         
            pg_query("BEGIN");
            $consulta1 = "SELECT * FROM usuario WHERE cedula = '".$cedula."' and tipousuario = '".$tipousuario."'";
            $consulta2 = "SELECT * FROM usuario WHERE usuario = '".$usuario."'";  
            $resultado1 = pg_query($consulta1);
            $resultado2 = pg_query($consulta2); 
            $num1= pg_num_rows($resultado1); 
            $num2= pg_num_rows($resultado2);
            $error = 0;
            $mensajeError = "";
            if ($num1==0 && $num2==0){
                try {
                    $sql= "INSERT INTO usuario(tipodocumento, cedula, nombre, apellido, correo, rutaimagen, activo,tipousuario,usuario)
									   VALUES ('$tipodocumento', '$cedula', '$nombre', '$apellido', '$correo','../imagenes/usuario.jpg', true,'$tipousuario','$usuario')";
                    $resultado1 = @pg_query($sql);
                    ///verificaca el tipo de usuario para crear el rol y darle los privelegios segun sea el rol del usuario
                    if($tipousuario=='ADMINISTRADOR'){
                            try {
                                $sql2="CREATE ROLE $usuario LOGIN CREATEROLE ENCRYPTED PASSWORD '$clave' VALID UNTIL 'infinity'";                                
                                if (!($resultado2 = @pg_query ($sql2))){
                                    throw new Exception();
                                }
                            }catch (Exception $e) {
                                @pg_query("ROLLBACK");
                                $mensajeError = "El usuario no tiene permiso suficiente para realizar esta tarea.";
                                $error = 1;
                            }
                    }	
                    else{	
                            try {
                                $sql2="CREATE ROLE $usuario LOGIN ENCRYPTED PASSWORD '$clave' VALID UNTIL 'infinity'";
                                
                                if(!($resultado2 = @pg_query ($sql2))){
                                    throw new Exception();
                                }
                            }catch (Exception $e) {
                                pg_query("ROLLBACK");
                                echo pg_last_error();
                                $mensajeError = "No tiene permiso para realizar esta tarea.";
                                $error = 1;
                            }
                    }
                    if(!$error){
                        /// cierra verificaca el tipo de usuario para crear el rol y darle los privelegios segun sea el rol del usuario
                        $sql3="GRANT $tipousuario TO $usuario";
                        $resultado3= @pg_query ($sql3);
                    }else{
                        $resultado3 = FALSE;
                    }
                    @pg_query("END");
                }catch (Exception $e) {
                    @pg_query("ROLLBACK");
                    //echo $mensaje = 'Ha ocurrido un problema, por favor vuelva a intentarlo.';
                    $mensajeError = "No tiene permiso para realizar esta tarea..";
                }
		if ($resultado1 and $resultado2 and $resultado3)
		{
			echo ' <script language="javascript">alert("Usuario registrado con éxito");</script> ';
			echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
			return 1;
			
		}				
		else
			{
			echo ' <script language="javascript">alert("No se ha podido realizar el registro. '.$mensajeError.' Por favor intente m&aacute;s tarde<br />");</script> ';
			echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
			return 0;
			}
		}
		else 
		{		
			echo ' <script language="javascript">alert("El Login ya se encuentra registrado en la base de datos");</script> ';
			echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
			return 0;
		}
		}else{
			echo ' <script language="javascript">alert("No se puede realizar el registro el correo, ya se encuentra registrado en la base de datos");</script> ';
			echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
			return 0;
		}
}//fin funcion insertar Usuario 
////////////////////////////////////
	public function modificarClaveDeUsuario($correo,$clave,$usuario,$cambiaPass){
			$query = "SELECT correo, usuario FROM usuario WHERE correo = '$correo' AND usuario = '$usuario'";
			 $res = $this->query($query);
					 $num = @pg_num_rows($res);
						if($num>0){
								$clave='md5'.md5($clave.$usuario);
								$sql2="ALTER ROLE $usuario ENCRYPTED PASSWORD '$clave'";
								$res = $this->query($sql2);
								echo ' <script language="javascript">alert("La clave se modifico con éxito");</script> ';
								if($cambiaPass == 1){
									echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
									}else{
										echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
									}
										
								
						}else{
								echo ' <script language="javascript">alert("La clave no se modifico, no existe el usuario o el correo");</script> ';
								if($cambiaPass == 1){
									echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
									}else{
										echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
									}
						}  
}//fin funcion modificar Clave De Usuario
////////////////////////////////////
	public function autenticarUsuario($usuario, $clave){
			$_SESSION["usuario"]=$usuario;
			$_SESSION["clave"]=$clave;
			$busqueda = "SELECT * FROM usuario where usuario='".$usuario."' and activo=true"; 
			$resultado = $this->query($busqueda);
			$num=@pg_num_rows($resultado);
			if($num==1){
				$a = pg_fetch_array($resultado);
				$_SESSION['saludo']=utf8_decode(chop($a["nombre"]." ".$a["apellido"]));//Trae el campo nombre y el apellido de la base de datos
				$_SESSION['tipodocumento']=$a["tipodocumento"];
				$_SESSION['idusuario']=$a["idusuario"];
				$_SESSION['cedula']=$a["cedula"];
				$_SESSION['nombre']=$a["nombre"];
				$_SESSION['apellido']=$a["apellido"];
				$_SESSION['correo']=$a["correo"];
				$_SESSION['rutaimagen']=$a["rutaimagen"];
				$_SESSION['activo']=$a["activo"];
				$_SESSION['tipousuario']=$a["tipousuario"];
				$_SESSION['usuario']=$a["usuario"];
				$tipo_usuario = $a["tipousuario"];
				if($tipo_usuario == "ADMINISTRADOR" OR $tipo_usuario == "ASISTENTE" OR $tipo_usuario == "USUARIO" ){
					switch($tipo_usuario){
						case "USUARIO":
						header("Location:../vista/tablero.php");exit();
						break;
						case "ASISTENTE":
						header("Location:../vista/tableroAsistente.php");exit();
						break;
						case "ADMINISTRADOR":
						header("Location:../vista/tableroAdministrador.php");exit();
						break;
					}
				}else 
				{
					header("Location: ../index.php");exit();
				}
			}
			else{
			echo ' <script language="javascript">alert("Esta cuenta de usuario no esta activa, debe activar el usuario");</script> ';
			echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
			}
		
	}//fin funcion autenticar Usuario
////////////////////////////////////
	public function modificarDatosDeUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo, $idusuario){
			$query ="UPDATE usuario SET tipodocumento='$tipodocumento', cedula='$cedula', nombre='$nombre', apellido='$apellido', 
										correo='$correo'
										WHERE idusuario = $idusuario";
			$resultado = $this->query($query);
				if($resultado){
						echo ' <script language="javascript">alert("Los datos se actualizaron exitosamente, los cambios se observaran en el proximo inicio de sesion");</script> ';
						echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
						return 1;
					}else{
						echo ' <script language="javascript">alert("Los datos no se actualizaron");</script> ';
						echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
						return 0;
					}
				
			
		
	}////fin funcio modificar Datos De Usuario
	////////////////////////////////////
	public function cambiarAvatar($idusuario,$rutaImagen){
			$query ="UPDATE usuario SET rutaimagen = '$rutaImagen' WHERE idusuario = $idusuario";
			$resultado = $this->query($query);
				if($resultado){
					echo ' <script language="javascript">alert("Se cambio el avatar exitosamente, los cambios se observaran en el proximo inicio de sesion");</script> ';
					echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
					}else{
						echo ' <script language="javascript">alert("El avatar no se actualizaron");</script> ';
						echo ' <meta http-equiv="refresh" content="0; url=../vista/configuracion.php"> ';
					}
				
			
		
	}////fin funcion cambiar Avatar

	////////////////////////////////////
	function generarJsonVerUsuarios($rResult, $iTotal, $iFilteredTotal, $sEcho){ 
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
        while ( $aRow = $this->resultadoFilas($rResult) ){
        	/*$datosE="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposou'])."||".trim($aRow['apellido1esposou'])."'";
        	$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposom'])."||".trim($aRow['nombre2esposom'])."||".trim($aRow['apellido1esposom'])."||".trim($aRow['apellido2esposom'])."||".trim(dma_a_amd($aRow['fechaactam']))."||".$aRow['nactam']."||".$aRow['ntomom']."||".$aRow['nombre1esposam']."||".$aRow['nombre2esposam']."||".$aRow['apellido1esposam']."||".$aRow['apellido2esposam']."'";*/
			$sOutput .= "[";
	        $sOutput .= '"'.$aRow['cedula'].'",';
	        $sOutput .= '"'.$aRow['nombre']." ".$aRow['apellido'].'",';
            $sOutput .= '"'.$aRow['correo'].'",';
			$sOutput .= '"'.$aRow['tipousuario'].'",';
             $sOutput .= '"'."<button class='btn btn-primary btn-xs' data-toggle='modal' data-target='#modalEdicion' onclick=agregaform($datos)><i class='fa fa-pencil'></i></button><button class='btn btn-danger btn-xs' data-toggle='modal' data-target='#modalEliminar' onclick=agregaformEliminar($datosE)><i class='fa fa-trash-o '></i></button>".'"';
            $sOutput .= "],";
        }

        $sOutput = substr_replace( $sOutput, "", -1 );

        $sOutput .= '] }';

        return $sOutput;
    }
    ////////////////////////////////////
}///fin de la clase usuario
?>