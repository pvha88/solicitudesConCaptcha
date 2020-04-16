<?php
include_once 'claseBase.php';
/**
 *
 */
class ClassOficina extends ClaseBase{
    public function getTablePath() {
        return 'ourc';
    }

    public function getSequenceName() {
        return '';
    }

    public function getPrimaryKeyName() {
        return 'codestado, codof';
    }

    public function tipoOficina($estado, $oficina){
        $query = "SELECT tipoficina FROM ourc WHERE codestado={$estado} AND codof={$oficina}";
        $res = $this->query($query);
        if ($res){
            $res = $this->fetchArray($res, 0);
            return $res[0];
        }else{
            return FALSE;
        }
    }

    /**
     * Método que devuelve los datos de una oficina dado el estado y el 
     * número de la oficina
     * @param int $estado codigo del estado
     * @param int $oficina codigo de la oficina
     * @return Mixed arrgelo con los datos de la oficina 
     */
    public function datosOficina ($estado, $oficina){
        $query = "SELECT * FROM ".$this->getTablePath()." WHERE codestado={$estado} AND codof={$oficina}";
        $res = $this->query($query);
        if ($res){
            $res = $this->fetchAll($res);
            return $res[0];
        }else{
            return FALSE;
        }
    }
    
    /**
     * Método que devuelve el nombre de la parroquia de una oficina
     * @param int $estado codigo del estado
     * @param int $oficina codigo de la oficina
     * @return Mixed arreglo con el nombre de la parroquia 
     */
    public function nombreParroquiaOficina($estado, $oficina){
        $query = "SELECT p.nombreparroquia 
                  FROM ".$this->getTablePath()." o, parroquia p
                  WHERE o.codestado={$estado} AND o.codof={$oficina} 
                    AND p.codestadop={$estado} AND o.codmunicipio = p.codmunicipiop 
                    AND o.codparroquia = p.codparroquia";
        $res = $this->query($query);
        if ($res){
            $res = $this->fetchArray($res, 0);  
            return $res[0];
        }else{
            return FALSE;
        }
    }
    /**
     * Método que devuelve el nombre del municipio de una oficina
     * @param int $estado codigo del estado
     * @param int $oficina codigo de la oficina
     * @return Mixed arreglo con el nombre de la parroquia 
     */
    public function nombreMunicipioOficina($estado, $oficina){
        $query = "SELECT m.nombremunicipio 
                  FROM ".$this->getTablePath()." o, municipio m
                  WHERE o.codestado={$estado} AND o.codof={$oficina} 
                    AND m.codestadom={$estado} AND o.codmunicipio = m.codmunicipio";
        $res = $this->query($query);
        if ($res){
            $res = $this->fetchArray($res, 0);  
            return $res[0];
        }else{
            return FALSE;
        }
    }
    
    public function oficinaPorParroquia($estado, $municipio, $parroquia){
        $query = "SELECT * FROM ourc "
                ."WHERE codestado=$estado and codmunicipio=$municipio and codparroquia=$parroquia";
        $res = $this->query($query);
        if ($res){           
            return $this->fetchAll($res);
        }else{
            return FALSE;
        }
    }
    
    public function oficinasPorEstadoMunicipioParroquia($estado, $municipio, $parroquia){
        $query = "SELECT codof FROM ".$this->getTablePath()." "
                . "WHERE codestado=$estado AND codmunicipio=$municipio AND codparroquia=$parroquia";
        $res = $this->query($query);
        if ($res){
            return $this->fetchAll($res);
        }else{
            return FALSE;
        }
    }
}

?>
