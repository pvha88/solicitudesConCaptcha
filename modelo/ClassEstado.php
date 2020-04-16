<?php
include_once 'claseBase.php';
/**
 *
 */
class ClassEstado extends ClaseBase{
    public function getTablePath() {
        return 'public.estado';
    }

    public function getSequenceName() {
        return '';
    }

    public function getPrimaryKeyName() {
        return 'codestado';
    }

    public function getLast() {

        $count = "SELECT COUNT(*) as total FROM {$this->getTablePath()}";

        $count = pg_fetch_all($this->query($count));

        $count = $count[0]['total'] > 0 ? $count[0]['total'] - 1: 0;

        $query = "SELECT {$this->getPrimaryKeyName()} AS last FROM {$this->getTablePath()} 
                        ORDER BY {$this->getPrimaryKeyName()} 
                        LIMIT 1 OFFSET $count ";

        $row = pg_fetch_all($this->query($query));

        return $row[0]['last'];
    }
	
    public function getNext() {
         
    }

	
    public function updateRowProformaDAO($params) {

        if (! array_key_exists ( 'codestado', $params )) {
                exit ( 'Identificador del estado no definido' );
        }
        
        ClassBase::cleanData($params);

        $query = "UPDATE  {$this->getTablePath()} SET 
                                        
                  WHERE {$this->getPrimaryKeyName()} =  '" . $params [$this->getPrimaryKeyName()] . "'";

        $result =  pg_query ( $query ) !== false;

        return $result;

    }
    
    /**
     *
     * @return Mixed Array con los estados existentes 
     */
    public function getAllEstados(){
        $query = "SELECT codestado as codigo, nombrestado as nombre FROM estado";
        $resultado = $this->query($query);
        if ($resultado){
            return $this->fetchAll($resultado);
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que retorna nombre de un estado dado
     * @param int $id identificador del estado
     * @return string nombre del estado 
     */
    public function estadoPorId($id){
        $query = "SELECT nombrestado FROM estado WHERE codestado={$id}";
        $resultado = $this->query($query);
        if ($resultado){
            $resultado =  $this->fetchArray($resultado, 0);            
            return $resultado["nombrestado"];
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que devuelve arreglo con todos los estados
     * @return Mixed falso en caso de que no haya estados registrados, arreglo 
     * con los estados en caso contrario
     */
    public function todosLosEstados(){
        $query = "SELECT * FROM ".$this->getTablePath()." ORDER BY nombrestado ASC";
        $res = $this->query($query);
        if($res){
            return $this->fetchAll($res);
        }else{
            return FALSE;
        }
    }
}

?>
