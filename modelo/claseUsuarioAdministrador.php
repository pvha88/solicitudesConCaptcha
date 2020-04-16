<?php
include_once 'claseBase.php';
class claseUsuarioAdministrable extends claseBase {
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
			return 1;
		}				
		else
			{
			return 0;
			}
		}
		else 
		{		
			return 0;
		}
		}else{
			return 0;
		}
}//fin funcion insertar Usuario 
////////////////////////////////////
    ////////////////////////////////////
	public function modificarDatosDeUsuario($tipodocumento, $cedula, $nombre, $apellido, $correo, $idusuario){
			$query ="UPDATE usuario SET tipodocumento='$tipodocumento', cedula='$cedula', nombre='$nombre', apellido='$apellido', 
										correo='$correo'
										WHERE idusuario = $idusuario";
			$resultado = $this->query($query);
				if($resultado){
						return 1;
					}else{
						return 0;
					}
				
			
		
	}////fin funcio modificar Datos De Usuario
	////////////////////////////////////
	////////////////////////////////////
	public function eliminarDatosDeUsuario($idusuario, $activarDesactivar){
			$query ="UPDATE usuario SET activo = $activarDesactivar WHERE idusuario = $idusuario";
			$resultado = $this->query($query);
				if($resultado){
						return 1;
					}else{
						return 0;
					}
				
			
		
	}////fin funcion eliminar Datos De Usuario
	////////////////////////////////////
	function generarJsonVerUsuarios($rResult, $iTotal, $iFilteredTotal, $sEcho){ 
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
        while ( $aRow = $this->resultadoFilas($rResult) ){
        	$datosE="'".$aRow['idusuario']."||".$aRow['tipodocumento']."||".$aRow['cedula']."||".trim($aRow['nombre'])."||".trim($aRow['apellido'])."||".$aRow['correo']."'";
        	/////
        	$datos="'".$aRow['idusuario']."||".$aRow['tipodocumento']."||".$aRow['cedula']."||".trim($aRow['nombre'])."||".trim($aRow['apellido'])."||".$aRow['correo']."'";
        	/////
        	if($aRow['activo'] == "f"){
        		$suspendida="CUENTA SUSPENDIDA";
        	}else{
        		$suspendida="CUENTA ACTIVA";
        	}
        	/////
			$sOutput .= "[";
	        $sOutput .= '"'.$aRow['cedula'].'",';
	        $sOutput .= '"'.$aRow['nombre']." ".$aRow['apellido'].'",';
            $sOutput .= '"'.$aRow['correo'].'",';
			$sOutput .= '"'.$aRow['tipousuario'].'",';
			$sOutput .= '"'.$suspendida.'",';
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