<?php
//clase encargada de ejecutar operaciones sobre la Base de Datos	
class claseOperacion {

	function query($sentencia) { //echo $sentencia;
		$result = pg_query ( $sentencia ); 
                $select = substr_count(strtolower($sentencia), "select");
                $insert = substr_count(strtolower($sentencia), "insert");
                $update = substr_count(strtolower($sentencia), "update");
                if ($select>0 && $insert<1 && $update < 1){
                    if (pg_num_rows ( $result ) > 0)
                            return $result;
                    else
                            return FALSE;
                }else{ //sentencias UPDATE e INSERT
                    //echo "UPD INS ".$sentencia."<br>";
                    return pg_affected_rows($result); //número de filas afectadas en el update
                }
	}
        function ejquery($sentencia){
            $result = pg_query ( $sentencia );
            return $result;
        }
       
	/**
	 * TODO: método en construcción
	 * verificar compatibilidad con la version 
	 * del servidor de BD
	 */
	//function query_params($sentencia, $params) {
	//	/**
	//	 * TODO: escapar los parametros para evitar sql injection
	//	 */
	//	
	//	$result = pg_query_params ( $sentencia, $params ); 
	//
	//	if (pg_num_rows ( $result ) > 0) {
	//		return $result;
	//	}else {
	//		return false;
	//	}
	//}
	
	//funcion para tomar por filas los resultados de una consulta
	function fetchArray($resultado, $posicion) {
		$row = pg_fetch_array ( $resultado, $posicion );
		return $row;
	}
	//funcion para contar el numero de filas que retorna una consulta
	function numRows($resultado) {
		if ($resultado)
			return pg_num_rows ( $resultado );
		return 0;
	}
	
	/**
	 * Metodo que devuelve el fetch asociativo de una consulta     
	 * @param $resultado resultado del query    
	 * @return Mixed arreglo el resultado de una consulta en un arreglo
	 */
	function resultadoFilas($resultado, $tipo = null) {
		if ($tipo != null) {
			//echo $resultado;
		}
		if ($resultado) {
			$row = pg_fetch_assoc ( $resultado );
			if ($tipo != null) {
				var_dump ( $row );
			}
			return $row;
		}
		return false;
	}
	
	function fetchAll($resultado) {
		if ($resultado) {
			$row = pg_fetch_all( $resultado );
			return $row;
		}
		return false;
	}
	function tansaccionBegin(){
            pg_query("BEGIN");
        }
        function transaccionEnd(){
            pg_query("END");
        }
}
?>