<?php include_once "claseConexion.php";
      include_once "claseUtil.php";
      include_once "claseOperacion.php";

class claseTablaDinamica extends claseOperacion {

	private $objconexion;

	/**
	 * Constructor de la clase
	 */
	function __construct() {

            $this->objconexion = new claseConexion();

	}



	/**
	 * Destructor de la clase
	 */
	function __destruct() {

	}

    /**
     * Metodo Ejemplo para  generar el json que se necesita para utilizar la tabla dinamica
     * este metodo debe crearse en la clase del modulo que se este realizando  en el output es donde van los nombres de los campos
     * que se requieren mostrar para colocar los formatos que se requieran o
     * inclusive agregar otras filas diferentes a resultados de BD
     *
     *
     * while ( $aRow = $this->resultadoFilas($rResult) ){

            $sOutput .= "[";
                    $sOutput .= '"'.addslashes($aRow['cre_num_credito']).'",';
                    $sOutput .= '"'.addslashes($aRow['cedula']).'",';
                    $sOutput .= '"'.addslashes($aRow['nombre_1']." ".$aRow['apellido_1']).'",';
                    $sOutput .= '"'.addslashes(ClassUtil::cambiar_fecha($aRow['cre_fecha_inicio'], 'd-m-Y')).'",';
                    $sOutput .= '"'.addslashes(ClassUtil::cambiar_fecha($aRow['cre_fecha_fin'],"d-m-Y")).'",';
                    $sOutput .= "],";
            }
     *
     * @param <array> $rResult arreglo que contiene el result de la consulta
     * @param <int> $iTotal varibale que contiene el total de registros de la consulta
     * @param <int> $iFilteredTotal varibale que contiene el total de registros filtrados de la consulta
     * @param <int> $sEcho varible que indica como se muestra el resultado
     * @return <string> que contiene el arreglo json que utiliza el javascript
     */
    function generarJsonDT($rResult, $iTotal, $iFilteredTotal, $sEcho){

        $longArrayCol= count($arrayCol);

	$sOutput = '{';
	$sOutput .= '"sEcho": '.intval($sEcho).', ';
        $sOutput .= '"iTotalRecords": '.$iTotal.', ';
	$sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';
	$sOutput .= '"aaData": [ ';

	while ( $aRow = $this->resultadoFilas($rResult) ){

	$sOutput .= "[";

			for($cOut = 0; $cOut < $longArrayCol; $cOut++){

			$sOutput .= '"'.addslashes($aRow["".$arrayCol[$cOut].""]).'",';

			}

		$sOutput .= "],";
	}

	$sOutput = substr_replace( $sOutput, "", -1 );
	$sOutput .= '] }';




	return $sOutput;


    }

    /**
     *
     * @param <string> $select contiene los campos a seleccionar desde la consulta
     * @param <string> $tabla tabla(s) de las cuales se realiza la consulta
     * @param <string> $joins contiene los joins que se puedan incluir
     * @param <string> $where  condiciones de la consulta
     * @param <type> $order
     * @param <type> $orderDir
     * @param <type> $orderCant
     * @param <array> $limit contiene dos elementos el primero es desde donde se
     * hace la conulta y el segundo hasta donde llega dicha consulta
     * @param <type> $groupby contiene un group by si aplica
     * @param <type> $camposBuscar campos a los que se va  a hacer el que contenga
     * @param <type> $search elemento que se va  a buscar en la tabla
     * @param <type> $sEcho
     * @param        $camposOrdenar este elemento permite indicar los campos por lso cuales se va a arelaziar el ordenamiento
     * @return <type>  un arreglo con los elemento necesarios para realizar el json los elementos son retornados
     * en el mismo orden que se requiere para ejecutar el metodo generarJsonDT() de esta misma clase
     */


    function generarQuery($select=null, $tabla=null, $joins=null, $where=null, $order= null, $orderDir=null, $orderCant=null, $limit=null, $groupby=null, $camposBuscar=null,$search=null, $sEcho=null, $camposOrdenar=null){
        //////DEFINICION DE SETTINGS PARA CONSTRUCCION DE QUERY/////////
        $queryS = "";
        $queryJ = "";
        $queryW = "";
        $queryL = "";
        $queryO = "";
        $queryG = "";
        ////////////////////////////////////////////////////////////

        $queryS = "SELECT ".$select." FROM ".$tabla;

        if ($joins != null){
            $queryJ = $joins;
        }

         if( $where != null ){
                $queryW = " WHERE ".$where;
         }

        if ($search != null){

            if($where == null){	
                $cond = " WHERE ";
                $endCond ="";
            }elseif($where != null){
                $cond = " AND ( ";
                $endCond =" ) ";

            }
            
            $queryW .= $cond ;

            $limite_camposBuscar = count($camposBuscar);
            $sufijoCamposBuscar = "";
            for($countBuscar = 0; $countBuscar < $limite_camposBuscar; $countBuscar++){

		$queryW .= $sufijoCamposBuscar.$camposBuscar[$countBuscar]."::varchar ILIKE '%".pg_escape_string($search)."%'" ;

		$sufijoCamposBuscar = " OR ";

            }
            
            $queryW .= $endCond;

	}

        if($limit != null){

             $queryL =" OFFSET ".pg_escape_string( $limit[0] ). " LIMIT ".pg_escape_string(abs($limit[1]));
        }

        if ( $order != null )
	{
            $queryO = " ORDER BY  ";
            for ( $i=0 ; $i<pg_escape_string( $orderCant ) ; $i++ )
            {
                    $queryO .= pg_escape_string( $camposOrdenar[$order[$i]])."
                            ".pg_escape_string($orderDir[$i]) .", ";
            }
            $queryO = substr_replace( $queryO, "", -2 );
	}


        if($groupby != null){
            $queryG = $groupby;
        }

	$queryEjecutar = $queryS.$queryJ.$queryW.$queryG.$queryO.$queryL;

	$queryTotalFiltrado = $queryS.$queryJ.$queryW.$queryG;

	if(($queryJ == null || $queryJ == "") && ($queryW != null || $queryW != "")){

		$sQuery = $queryS.$queryW.$queryG;

        }elseif(($queryJ != null || $queryJ != "") && ($queryW == null || $queryW == "")){

		$sQuery = $queryS.$queryJ.$queryG;

        }else{

            $sQuery = $queryS.$queryJ.$queryW.$queryG;

	}
        //echo $queryEjecutar;
        
	$rResult = $this->query($queryEjecutar);

	$total_filtrado = $this->query($queryTotalFiltrado);

	$total_filtrado_return = $this->numRows($total_filtrado);

	$total = $this->query($sQuery);

	$total_return = $this->numRows($total);

        $jsonTotal = array(0=>$rResult, 1=>$total_return, 2=>$total_filtrado_return, 3=>$sEcho);
        //print_r($jsonTotal);
        return $jsonTotal;
        

    }

}
?>
