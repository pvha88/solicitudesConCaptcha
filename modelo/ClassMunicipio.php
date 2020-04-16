<?php
include_once 'claseBase.php';
/**
 *
 */
class ClassMunicipio extends ClaseBase{
    public function getTablePath() {
        return 'public.municipio';
    }

    public function getSequenceName() {
        return '';
    }

    public function getPrimaryKeyName() {
        return 'codmunicipio, codestadom';
    }

    public function getLast() {
      
    }
	
    public function getNext() {
         
    }
    
    /**
     * Método que retorna un arreglo con los municipio de un estado
     * @param int $estado codigo del estado
     * @return Mixed Array con los estados existentes 
     */
    public function getMunicipiosByEstado($estado){
        $query = "SELECT codmunicipio as codigo, nombremunicipio as nombre FROM municipio WHERE codestadom = {$estado}";
        $resultado = $this->query($query);
        if ($resultado){
            return $this->fetchAll($resultado);
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que devuelve los datos de un municipio para un estado 
     * y una oficina particular
     * @param int $estado
     * @param int $oficina
     * @return array datos del estado solicitado 
     */
    public function municipioPorEstadoPorOficina($estado, $oficina){
        $query = "SELECT m.*
                  FROM ourc o, {$this->getTablePath()} m
                    WHERE 
                      o.codmunicipio = m.codmunicipio AND
                      o.codestado = m.codestadom AND
                      o.codestado = {$estado} AND
                      o.codof = {$oficina}";
        $resultado = $this->query($query);
        if ($resultado){
            return $this->fetchArray($resultado, 0);
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que retorna el nombre de un municipio según su código y 
     * el del estado
     * @param int $estado codigo del estado
     * @param int $municipio codigo del municipio
     * @return string nombre del municipio solicitado 
     */
    public function municipioIdEstado($estado, $municipio){
        $query = "SELECT nombremunicipio 
                  FROM municipio 
                  WHERE codmunicipio={$municipio} and codestadom={$estado}";
        $resultado = $this->query($query);
        if ($resultado){
            $resultado = $this->fetchArray($resultado, 0);
            return $resultado["nombremunicipio"];
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que devuelve los códigos de municipio para un estado dado
     * @param type $estado código del estado
     * @return boolean o arreglo con los códigos de municipios existentes
     */
    public function municipioPorEstado($estado){
        $query = "SELECT codmunicipio FROM ".$this->getTablePath()." "
                . "WHERE codestadom = $estado";
        $res = $this->query($query);
        if($res){
            return $this->fetchAll($res);
        }else{
            return FALSE;
        }
    }
    
}

?>
