<?php

include_once 'claseOperacion.php';
include_once 'claseConexion.php';

abstract class claseBase extends claseOperacion {
	
	/**
	 * conexion con la base de datos
	 *
	 * @var conexion
	 */
	private $objconexion;
	
	public function __construct() {
		$this->objconexion = new claseConexion();
	}
	
	public function __destruct() {
		$this->objconexion->desconectar();
	}
	
	/**
	 * devuelve la ruta de la tabla dentro de la base de datos
	 * 
	 * @return string
	 *
	 */
	public abstract  function getTablePath();
	
	/**
	 * devuelve el nombre de la secuencia en la base de datos
	 * 
	 * @return string
	 *
	 */
	public abstract function getSequenceName();

	/**
	 * devuelve el nombre de la columna que es clave primaria
	 * 
	 * @return string
	 *
	 */
	public abstract function getPrimaryKeyName();
	
	/**
	 * devuelve el ultimo valor de la clave primaria cuando la tabla no tiene secuencia
	 * 
	 * @return string
	 *
	 */
	public function getLast() {
		/* Empty */
	}
	
	/**
	 * devuelve el valor de la proxima clave primaria cuando
	 * la tabla no tiene secuencia
	 * 
	 * @return int | string
	 */
	public function getNext() {
		/* Empty */
	}
	
	/**
	 * limpiar la data
	 *
	 * @param array arreglo de parametros
	 */
	public static function cleanData(&$data) {
		
		foreach($data as $d) {
			$d = trim(addslashes ($d ));
		}
	}

	/**
	 * contar cantidad de registros resultantes 
	 * para las opciones dadas
	 *
	 * @param array $options opciones de búsqueda
	 * @return integer total de registros
	 */
	public function countDAO($options) {
		$cantidad = 0;
		
		$query = " SELECT count(*) AS cantidad FROM " . $this->getTablePath () . " ";
		
		$where = false;
		
		foreach ( $options as $condition ) {
			
			if (! $where) {
				$query .= ' WHERE ' . $condition . ' ';
				$where = true;
			} else {
				$query .= 'AND ' . $condition . ' ';
			}
		
		}
		
		$result = $this->query($query);
		
		if ($result != false) {
			$result = pg_fetch_all($result);
			$cantidad = $result[0]['cantidad'];
		}
		
		return $cantidad;
	}
	
	/**
	 * devuelve los registros que coincidan con los parametros de búsqueda
	 * 
	 * eg: $options = array(
	 * 	" field1 =  5", 
	 *  "field2 ilike '%foo%'", 
	 * 	"(field3 = 'foo10' OR field3 = 'foo20')"
	 * );
	 * 
	 *
	 * @param array $options opciones para armar el query de búsqueda
	 * @param integer $limit cantidad de registros solicitados
	 * @param integer $offset numero del registro inicial
	 * 
	 * @return array lista de registros
	 */
	public function getRowsDAO($options, $limit = null, $offset = 0, $order = null) {
		$rowset = array ();
		
		$query = " SELECT * FROM " . $this->getTablePath () . " ";
		
		$where = false;
		
		foreach ( $options as $condition ) {
			
			if (! $where) {
				$query .= ' WHERE ' . $condition . ' ';
				$where = true;
			} else {
				$query .= 'AND ' . $condition . ' ';
			}
		
		}
		
		if ($order !== null) {
			$query .= ' ' . $order;
		}
		
		if ($limit != null) {
			$query .= ' LIMIT ' . $limit . ' OFFSET ' . $offset;
		}
		//echo '<br>', $query , '<br>';
		$result = $this->query ( $query );
		
		if ($result != false) {
			$rowset = pg_fetch_all( $result );
		}
		
		return $rowset;
	
	}
	
	/**
	 * e.g: array('nombre' => 'Nombre', 'descripcion' => 'Apellido', ...)
	 * 
	 * @param array $params arreglo de parametros con la informacion del registro o fila
	 * 
	 * @return integer last id | false
	 */
	public function insertRowDAO(&$params) {
		$last = false;
		// si tiene secuencia eliminar el campo que esta se incrementa automaticamente
		if ($this->getSequenceName() != '') {
			unset ( $params [$this->getPrimaryKeyName()] );
		}else { // como no tiene secuencia obtener el siguiente valor
			$params[$this->getPrimaryKeyName()] = $this->getNext();
		}
		
		$columns =  "(" . implode( ",", array_keys($params) ) . ")";
		
		$values =  "( '" . implode( "','", array_values($params) ) . "' )";
		
		$query = "INSERT INTO {$this->getTablePath()} $columns VALUES $values";
		
		$restult = pg_query ( $query );

		if ($restult != false) {

			if(strlen( $this->getSequenceName())) {
				$query = "SELECT CURRVAL('" . $this->getSequenceName() .  "') AS last_id";
				$last = current ( $this->fetchArray ( $this->ejquery( $query ), 0 ) );
			}else {
				$last = $this->getLast();
			}

			$params[$this->getPrimaryKeyName()] = $last;
			
		}
		
		return $last;
	}
	
	public function deleteRowDAO($key) {
		$query = "DELETE FROM {$this->getTablePath()} WHERE {$this->getPrimaryKeyName()} = '$key'";
		//echo $query;
		return pg_query($query);
	}
	
	/**
	 * devuelve el arreglo con el resultado del query
	 * utilizando pg_fetch_all
	 *
	 * @param string $sql
	 * @return array $rowset
	 */
	public function executeQuery($sql) {
		$rowset = array();
		
		$result = $this->query($sql);
		if(is_resource($result)){
			$rowset = pg_fetch_all($result); 
		}
		
		//-----------------
		/*if($result) {
			$rowset = pg_fetch_all($result);	
		}*/
		//----------------
		return $rowset;
	}
	
	/**
	 * Realiza el update en la tabla correspondiente con los parametros dados
	 * e.g: array('nombre' => 'Nombre', 'descripcion' => 'Apellido', ...)
	 *
	 * @param array $params
	 * @return bool
	 */
	public function updateRowDAO($params) {
		
		if (! array_key_exists ( $this->getPrimaryKeyName(), $params )) {
			exit ( 'Identificador de  ' . __CLASS__ . ' no definido' );
		}
		
		ClassBase::cleanData($params);
		
		$set = '';
		
		foreach($params as $col => & $val) {
			if($col == $this->getPrimaryKeyName()) {
				continue;
			}
			/**
			 * TODO: verificar que tipo de dato es (numerico, cadena, etc.)
			 */
			$set .= " $col = '$val', ";   
		}
		
		$set = rtrim($set,' ,');

		$query = "UPDATE  {$this->getTablePath()} SET $set  
		WHERE {$this->getPrimaryKeyName()} = '" . $params [$this->getPrimaryKeyName()] . "'";
		//echo $query;
		return pg_query ( $query ) !== false;
	
	}
	
}
?>