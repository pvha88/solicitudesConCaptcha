<?php
include_once 'claseBase.php';
/**
 *
 */
class ClassParroquia extends ClaseBase{
    public function getTablePath() {
        return 'public.parroquia';
    }

    public function getSequenceName() {
        return '';
    }

    public function getPrimaryKeyName() {
        return ' codparroquia, codmunicipiop, codestadop';
    }

    public function getLast() {
 
    }
	
    public function getNext() {
         
    }

	
    public function updateRowProformaDAO($params) {

        if (! array_key_exists ( 'codparroquia', $params )) {
                exit ( 'Identificador de la parroquia no definido' );
        }
        
        ClassBase::cleanData($params);

        $query = "UPDATE  {$this->getTablePath()} SET 
                                        
                  WHERE {$this->getPrimaryKeyName()} =  '" . $params [$this->getPrimaryKeyName()] . "'";

        $result =  pg_query ( $query ) !== false;

        return $result;

    }
    
    /**
     * Método que retorna un arreglo con las parroquias de un municipio y un estado
     * @param int $municipio codigo del municipio
     * @param int $estado codigo del estado
     * @return Mixed Array con los estados existentes 
     */
    public function getParroquiasByEstadoMunicipio($municipio, $estado){
        $query = "SELECT codparroquia as codigo, nombreparroquia as nombre FROM parroquia 
                  WHERE codmunicipiop = {$municipio} and codestadop = {$estado}";
        $resultado = $this->query($query);
        if ($resultado){
            return $this->fetchAll($resultado);
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que devuelve los datos de una parroquia para un estdo, municipio y
     * oficina determinada
     * @param int $estado
     * @param int $oficina
     * @param int $municipio
     * @return array con los datos de la parroquia 
     */
    public function parroquiaPorEstadoMunicipioOf($estado, $oficina, $municipio){
        $query = "SELECT 
                  parroquia.nombreparroquia
                FROM 
                  public.ourc, 
                  ".$this->getTablePath()."
                WHERE 
                  ourc.codparroquia = parroquia.codparroquia AND
                  ourc.codmunicipio = parroquia.codmunicipiop AND
                  ourc.codestado = parroquia.codestadop AND ourc.codestado ={$estado} AND ourc.codof={$oficina} 
                  AND ourc.codmunicipio={$municipio};";
        $resultado = $this->query($query);
        if ($resultado){
            return $this->fetchArray($resultado, 0);
        }else{
            return FALSE;
        }
        
    }
    
    /**
     * Método que devuelve el nombre de una parroquia para un estado, municipio 
     * y parroquia dados
     * @param type $estado
     * @param type $municipio
     * @param type $parroquia
     * @return string nombre de la parroquia 
     */
    public function parroquiaIdEstadoMunicipio($estado, $municipio, $parroquia){
        $query = "SELECT nombreparroquia 
                  FROM parroquia 
                  WHERE codestadop = {$estado} and codmunicipiop={$municipio} and codparroquia={$parroquia}";
        $resultado = $this->query($query);
        if ($resultado){
            $resultado = $this->fetchArray($resultado, 0);
            return $resultado["nombreparroquia"];
        }else{
            return FALSE;
        }
    }
    
    
    public function nombreParroquiaOficina($estado, $oficina){
        $query = "SELECT codparroquia FROM ".$this->getTablePath()."
                  WHERE codestado = {$estado} AND codof = {$oficina}";
        $res = $this->query($query);
        if($res){
            return $this->fetchAll($res);
        }
    }
}

?>
