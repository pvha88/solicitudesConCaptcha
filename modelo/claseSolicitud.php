<?php
include_once 'claseBase.php';
class claseSolicitud extends claseBase {
    public function getTablePath() {
        return 'public.solicitudnac';
    }

    public function getSequenceName() {
        return 'solicitudnac_idsolicitudnac_seq';
    }

    public function getPrimaryKeyName() {
        return 'idsolicitudnac';
    }

    public function getLast() {
      
    }
	
    public function getNext() {
         
    }
    //////////////////////////

	////////////////////////////////////
	public function insertarSolicutudNac($tipoacta,$nacta, $ntomo, $fechaacta, $nombre1, $nombre2,$apellido1, $apellido2,
														  $nombre1esposo, $nombre2esposo, $apellido1esposo, $apellido2esposo, 
														  $nombre1esposa, $nombre2esposa, $apellido1esposa, $apellido2esposa,
														  $codestado, $codmunicipio, $codparroquia, $codof, $idusuario){
	$this->query("BEGIN");
			try {
			   $query ="INSERT INTO solicitud(tipoacta, idusuario)VALUES ('$tipoacta', $idusuario)";
			   $resultado = $this->query($query);
			   if(!($resultado)){
				  throw new Exception();
				}
			$this->query("END");	
			}catch (Exception $e){
				$this->query("ROLLBACK");
				return 0;
                }
				
		if($resultado){
			$anosolicitud=date("Y");
			$sql="SELECT max(idsolicitud) as idsolicitud FROM solicitud WHERE anosolicitud = $anosolicitud";
			$resultado = $this->query($sql);
			$datosSoli = pg_fetch_array($resultado);
			$idsolicitud = $datosSoli["idsolicitud"];
				switch ($tipoacta){
					case 'NACIMIENTO':
						$sql = "INSERT INTO nacimiento(nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, 
						apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, 
						anosolicitud)
						VALUES ($nacta, $ntomo, '$fechaacta', '$nombre1', '$nombre2', '$apellido1', 
						'$apellido2', $codestado, $codmunicipio, $codparroquia, $codof, $idsolicitud, 
						$anosolicitud)";
						$resultado = $this->query($sql);
					break;
					case 'DEFUNCION':
						$sql = "INSERT INTO defuncion(nacta, ntomo, fechaacta, nombre1, nombre2, apellido1, 
						apellido2, codestado, codmunicipio, codparroquia, codof, idsolicitud, 
						anosolicitud)
						VALUES ($nacta, $ntomo, '$fechaacta', '$nombre1', '$nombre2', '$apellido1', 
						'$apellido2', $codestado, $codmunicipio, $codparroquia, $codof, $idsolicitud, 
						$anosolicitud)";
						$resultado = $this->query($sql);
					break;
					case 'MATRIMONIO':
						$sql = "INSERT INTO matrimonio(nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, 
						apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, 
						apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, 
						codof, idsolicitud, anosolicitud)
						VALUES ($nacta, $ntomo, '$fechaacta', '$nombre1esposo', '$nombre2esposo', 
						'$apellido1esposo', '$apellido2esposo', '$nombre1esposa', '$nombre2esposa', 
						'$apellido1esposa', '$apellido2esposa', $codestado, $codmunicipio, $codparroquia, 
						$codof, $idsolicitud, $anosolicitud)";
						$resultado = $this->query($sql);
					break;
					case 'UEH':
						$sql = "INSERT INTO ueh(nacta, ntomo, fechaacta, nombre1esposo, nombre2esposo, 
						apellido1esposo, apellido2esposo, nombre1esposa, nombre2esposa, 
						apellido1esposa, apellido2esposa, codestado, codmunicipio, codparroquia, 
						codof, idsolicitud, anosolicitud)
						VALUES ($nacta, $ntomo, '$fechaacta', '$nombre1esposo', '$nombre2esposo', 
						'$apellido1esposo', '$apellido2esposo', '$nombre1esposa', '$nombre2esposa', 
						'$apellido1esposa', '$apellido2esposa', $codestado, $codmunicipio, $codparroquia, 
						$codof, $idsolicitud, $anosolicitud)";
						$resultado = $this->query($sql);
					break;
				}
			return 1;
			}
	}////fin funcion insertar Solicutud Nac
	 ///////ver Solicutudes nac
       
function generarJsonVerSolicitud($rResult, $iTotal, $iFilteredTotal, $sEcho){
		include_once("../controlador/cambioformatofecha.php");
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
		
        while ( $aRow = $this->resultadoFilas($rResult) ){
			
			$datosE="'".$aRow['idsolicitudnac']."||".$aRow['anosolicitudnac']."||".trim($aRow['nombre1'])."||".trim($aRow['apellido1'])."'";
			$numSolicitud=$aRow['idsolicitud']."-".$aRow['anosolicitud'];
			
			switch ($aRow['tipoacta']){
				case 'NACIMIENTO':
				$nombres = "Presentado: ".$aRow['nombre1n']." ".$aRow['nombre2n']." ".$aRow['apellido1n']." ".$aRow['apellido2n'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactan'])).".<br /> Num Acta: ".$aRow['nactan'].", Num Tomo:".$aRow['ntomon'];
				$funcion="agregaform";
				$modal="modalEdicion";
				$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1n'])."||".trim($aRow['nombre2n'])."||".trim($aRow['apellido1n'])."||".trim($aRow['apellido2n'])."||".trim(dma_a_amd($aRow['fechaactan']))."||".$aRow['nactan']."||".$aRow['ntomon']."'";
				$funcionE="agregaformEliminar";
				$datosE="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1n'])."||".trim($aRow['apellido1n'])."'";
				break;
				case 'DEFUNCION':
				$nombres = "Difunto: ".$aRow['nombre1d']." ".$aRow['nombre2d']." ".$aRow['apellido1d']." ".$aRow['apellido2d'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactad'])).".<br /> Num Acta: ".$aRow['nactad'].", Num Tomo:".$aRow['ntomod'];
				$funcion="agregaform";
				$modal="modalEdicion";
				$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1d'])."||".trim($aRow['nombre2d'])."||".trim($aRow['apellido1d'])."||".trim($aRow['apellido2d'])."||".trim(dma_a_amd($aRow['fechaactad']))."||".$aRow['nactad']."||".$aRow['ntomod']."'";
				$funcionE="agregaformEliminar";
				$datosE="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1d'])."||".trim($aRow['apellido1d'])."'";
				break;
				case 'MATRIMONIO':
				$nombres = "Del conyuge: ".$aRow['nombre1esposom']." ".$aRow['nombre2esposom']." ".$aRow['apellido1esposom']." ".$aRow['apellido2esposom']."<br /> De la conyuge: ".$aRow['nombre1esposam']." ".$aRow['nombre2esposam']." ".$aRow['apellido1esposam']." ".$aRow['apellido2esposam'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactam'])).".<br /> Num Acta: ".$aRow['nactam'].", Num Tomo:".$aRow['ntomom'];
				$funcion="agregaform";
				$modal="modalEdicionMU";
				$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposom'])."||".trim($aRow['nombre2esposom'])."||".trim($aRow['apellido1esposom'])."||".trim($aRow['apellido2esposom'])."||".trim(dma_a_amd($aRow['fechaactam']))."||".$aRow['nactam']."||".$aRow['ntomom']."||".$aRow['nombre1esposam']."||".$aRow['nombre2esposam']."||".$aRow['apellido1esposam']."||".$aRow['apellido2esposam']."'";
				$funcionE="agregaformEliminar";
				$datosE="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposom'])."||".trim($aRow['apellido1esposom'])."'";
				break;
				case 'UEH':
				$nombres = "Del conyuge: ".$aRow['nombre1esposou']." ".$aRow['nombre2esposou']." ".$aRow['apellido1esposou']." ".$aRow['apellido2esposou']."<br /> De la conyuge:  ".$aRow['nombre1esposau']." ".$aRow['nombre2esposau']." ".$aRow['apellido1esposau']." ".$aRow['apellido2esposau'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactau'])).".<br /> Num Acta: ".$aRow['nactau'].", Num Tomo:".$aRow['ntomou'];
				$funcion="agregaform";
				$modal="modalEdicionMU";
				$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposou'])."||".trim($aRow['nombre2esposou'])."||".trim($aRow['apellido1esposou'])."||".trim($aRow['apellido2esposou'])."||".trim(dma_a_amd($aRow['fechaactau']))."||".$aRow['nactau']."||".$aRow['ntomou']."||".$aRow['nombre1esposau']."||".$aRow['nombre2esposau']."||".$aRow['apellido1esposau']."||".$aRow['apellido2esposau']."'";
				$funcionE="agregaformEliminar";
				$datosE="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['tipoacta']."||".trim($aRow['nombre1esposou'])."||".trim($aRow['apellido1esposou'])."'";
				break;
			}
            
			$sOutput .= "[";
	        $sOutput .= '"'.trim($numSolicitud).'",';
	        $sOutput .= '"'.$aRow['tipoacta'].'",';
            $sOutput .= '"'.trim($nombres).'",';
			$sOutput .= '"'.trim(dma_a_amd($aRow['fecharegistrosoli'])).'",';
            $sOutput .= '"'.trim($datosActa).'",';
            $sOutput .= '"'."<button class='btn btn-primary btn-xs' data-toggle='modal' data-target='#$modal' onclick=$funcion($datos)><i class='fa fa-pencil'></i></button><button class='btn btn-danger btn-xs' data-toggle='modal' data-target='#modalEliminar' onclick=$funcionE($datosE)><i class='fa fa-trash-o '></i></button>".'"';
            $sOutput .= "],";
        }

        $sOutput = substr_replace( $sOutput, "", -1 );

        $sOutput .= '] }';

        return $sOutput;
    }
    ////////////////////////////////////
	
	////////////////////////////////////
	public function actualizarSolicutudMatUeh($tipoacta,$nacta, $ntomo, $fechaacta,$idsolicitud, $anosolicitud,
											  $nombre1esposo, $nombre2esposo, $apellido1esposo, $apellido2esposo, 
											  $nombre1esposa, $nombre2esposa, $apellido1esposa, $apellido2esposa){
		  include_once("../controlador/cambioformatofecha.php");
		  $fechaacta=dma_a_amd($fechaacta);
		  if($tipoacta == "MATRIMONIO"){
			  $sql = "UPDATE matrimonio
					  SET  nacta=$nacta, ntomo=$ntomo, fechaacta='$fechaacta', nombre1esposo='$nombre1esposo', 
						   nombre2esposo='$nombre2esposo', apellido1esposo='$apellido1esposo', apellido2esposo='$apellido2esposo',
						   nombre1esposa='$nombre1esposa', nombre2esposa='$nombre2esposa', apellido1esposa='$apellido1esposa',
						   apellido2esposa='$apellido2esposa'
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
			 $resultado = $this->query($sql);
		  }else{
			  $sql = "UPDATE ueh
					  SET  nacta=$nacta, ntomo=$ntomo, fechaacta='$fechaacta', nombre1esposo='$nombre1esposo', 
						   nombre2esposo='$nombre2esposo', apellido1esposo='$apellido1esposo', apellido2esposo='$apellido2esposo',
						   nombre1esposa='$nombre1esposa', nombre2esposa='$nombre2esposa', apellido1esposa='$apellido1esposa',
						   apellido2esposa='$apellido2esposa'
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
			 $resultado = $this->query($sql);
		  }
		  if($resultado){
			  return 1;
		  }
		  else{
			  return 0;
		  }
															  
	}
////////////////////////////////////
////////////////////////////////////
	public function insertarSolicitudNacDef($tipoacta,$nacta, $ntomo, $fechaacta,$idsolicitud, $anosolicitud, $nombre1, $nombre2,$apellido1, $apellido2){
		  include_once("../controlador/cambioformatofecha.php");
		  $fechaacta=dma_a_amd($fechaacta);
		  if($tipoacta == "NACIMIENTO"){
			  $sql = "UPDATE nacimiento
					  SET nacta=$nacta, ntomo=$ntomo, fechaacta='$fechaacta', nombre1='$nombre1', nombre2='$nombre2', 
						   apellido1='$apellido1', apellido2='$apellido2'
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
			 $resultado = $this->query($sql);
		  }else{
			  $sql = "UPDATE defuncion
					  SET nacta=$nacta, ntomo=$ntomo, fechaacta='$fechaacta', nombre1='$nombre1', nombre2='$nombre2', 
						   apellido1='$apellido1', apellido2='$apellido2'
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
			 $resultado = $this->query($sql);
		  }
		  if($resultado){
			  return 1;
		  }
		  else{
			  return 0;
		  }
															  
	}
////////////////////////////////////
////////////////////////////////////
	public function eliminarSolicitud($idsolicitud, $anosolicitud){
		 
					$sql = "UPDATE solicitud
					  SET eliminada = TRUE
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
					$resultado = $this->query($sql);
			
		  if($resultado){
			  return 1;
		  }
		  else{
			  return 0;
		  }
															  
	}
////////////////////////////////////

       /////////////nuevo pablo salida copiar y pegar **copiado**/////////////////////
function generarJsonVerSolicitudDescargarActas($rResult, $iTotal, $iFilteredTotal, $sEcho){
		include_once("../controlador/cambioformatofecha.php");
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
		
        while ( $aRow = $this->resultadoFilas($rResult) ){
			
			$datosE="'".$aRow['idsolicitudnac']."||".$aRow['anosolicitudnac']."||".trim($aRow['nombre1'])."||".trim($aRow['apellido1'])."'";
			$numSolicitud=$aRow['idsolicitud']."-".$aRow['anosolicitud'];
			$imagen = "<a href = ".$aRow['rutaimagenact']." target='_blank'><img src='../imagenes/pdf.jpeg' width='80' heigth='80'></a>";
			switch ($aRow['tipoacta']){
				case 'NACIMIENTO':
				$nombres = "Presentado: ".$aRow['nombre1n']." ".$aRow['nombre2n']." ".$aRow['apellido1n']." ".$aRow['apellido2n'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactan'])).".<br /> Num Acta: ".$aRow['nactan'].", Num Tomo:".$aRow['ntomon'];
				break;
				case 'DEFUNCION':
				$nombres = "Difunto: ".$aRow['nombre1d']." ".$aRow['nombre2d']." ".$aRow['apellido1d']." ".$aRow['apellido2d'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactad'])).".<br /> Num Acta: ".$aRow['nactad'].", Num Tomo:".$aRow['ntomod'];
				break;
				case 'MATRIMONIO':
				$nombres = "Del conyuge: ".$aRow['nombre1esposom']." ".$aRow['nombre2esposom']." ".$aRow['apellido1esposom']." ".$aRow['apellido2esposom']."<br /> De la conyuge: ".$aRow['nombre1esposam']." ".$aRow['nombre2esposam']." ".$aRow['apellido1esposam']." ".$aRow['apellido2esposam'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactam'])).".<br /> Num Acta: ".$aRow['nactam'].", Num Tomo:".$aRow['ntomom'];				
				break;
				case 'UEH':
				$nombres = "Del conyuge: ".$aRow['nombre1esposou']." ".$aRow['nombre2esposou']." ".$aRow['apellido1esposou']." ".$aRow['apellido2esposou']."<br /> De la conyuge:  ".$aRow['nombre1esposau']." ".$aRow['nombre2esposau']." ".$aRow['apellido1esposau']." ".$aRow['apellido2esposau'];
				$datosActa="Fecha del Acta:".trim(dma_a_amd($aRow['fechaactau'])).".<br /> Num Acta: ".$aRow['nactau'].", Num Tomo:".$aRow['ntomou'];
				break;
			}
			$sOutput .= "[";
	        $sOutput .= '"'.trim($numSolicitud).'",';
	        $sOutput .= '"'.$aRow['tipoacta'].'",';
            $sOutput .= '"'.trim($nombres).'",';
			$sOutput .= '"'.trim(dma_a_amd($aRow['fecharegistrosoli'])).'",';
            $sOutput .= '"'.trim($datosActa).'",';
            $sOutput .= '"'.$imagen.'"';
            $sOutput .= "],";
        }

        $sOutput = substr_replace( $sOutput, "", -1 );

        $sOutput .= '] }';

        return $sOutput;
    }
    ////////////////////////////////////
	function generarJsonVerSolicitudAsistente($rResult, $iTotal, $iFilteredTotal, $sEcho){
		include_once("../controlador/cambioformatofecha.php");
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
		
        while ( $aRow = $this->resultadoFilas($rResult) ){
			
			$numSolicitud=$aRow['idsolicitud']."-".$aRow['anosolicitud'];
			$nombres = $aRow['nombreus']." ".$aRow['apellidous'];
			switch ($aRow['tipoacta']){
				case 'NACIMIENTO':
				$datosActa="Presentado: ".trim($aRow['nombre1n'])." ".trim($aRow['apellido1n'])."<br />Fecha del Acta:".trim(dma_a_amd($aRow['fechaactan'])).".<br /> Num Acta: ".$aRow['nactan'].", Num Tomo:".$aRow['ntomon'];
				$sql = "SELECT 
						  estado.nombrestado, 
						  municipio.nombremunicipio, 
						  parroquia.nombreparroquia, 
						  ourc.nombreuh
						FROM 
						  public.estado, 
						  public.municipio, 
						  public.parroquia, 
						  public.ourc
						WHERE 
						  estado.codestado = municipio.codestadom AND
						  estado.codestado = parroquia.codestadop AND
						  estado.codestado = ourc.codestado AND
						  municipio.codmunicipio = parroquia.codmunicipiop AND
						  municipio.codmunicipio = ourc.codmunicipio AND
						  parroquia.codparroquia = ourc.codparroquia AND 
						  ourc.codestado={$aRow['codestadon']} AND
						  ourc.codmunicipio={$aRow['codmunicipion']} AND
						  ourc.codparroquia={$aRow['codparroquian']} AND
						  ourc.codof={$aRow['codofn']}";
				$resultado = $this->query($sql);
				$registro = pg_fetch_array($resultado);
				$ubicacionDelActa = "Estado: ".$registro["nombrestado"]."<br> Municipio: ".$registro["nombremunicipio"]."<br> Parroquia: ".$registro["nombreparroquia"]."<br> Ourc:".$registro["nombreuh"];

				break;
				case 'DEFUNCION':
				$datosActa="Difunto: ".trim($aRow['nombre1d'])." ".trim($aRow['apellido1d'])."<br />Fecha del Acta:".trim(dma_a_amd($aRow['fechaactad'])).".<br /> Num Acta: ".$aRow['nactad'].", Num Tomo:".$aRow['ntomod'];
				$sql = "SELECT 
						  estado.nombrestado, 
						  municipio.nombremunicipio, 
						  parroquia.nombreparroquia, 
						  ourc.nombreuh
						FROM 
						  public.estado, 
						  public.municipio, 
						  public.parroquia, 
						  public.ourc
						WHERE 
						  estado.codestado = municipio.codestadom AND
						  estado.codestado = parroquia.codestadop AND
						  estado.codestado = ourc.codestado AND
						  municipio.codmunicipio = parroquia.codmunicipiop AND
						  municipio.codmunicipio = ourc.codmunicipio AND
						  parroquia.codparroquia = ourc.codparroquia AND 
						  ourc.codestado={$aRow['codestadod']} AND
						  ourc.codmunicipio={$aRow['codmunicipiod']} AND
						  ourc.codparroquia={$aRow['codparroquiad']} AND
						  ourc.codof={$aRow['codofd']}";
				$resultado = $this->query($sql);
				$registro = pg_fetch_array($resultado);
				$ubicacionDelActa = "Estado: ".$registro["nombrestado"]."<br> Municipio: ".$registro["nombremunicipio"]."<br> Parroquia: ".$registro["nombreparroquia"]."<br> Ourc:".$registro["nombreuh"];
				break;
				case 'MATRIMONIO':
				$datosActa="Conyuges: ".trim($aRow['nombre1esposom'])." ".trim($aRow['apellido1esposom'])." y ".trim($aRow['nombre1esposam'])." ".trim($aRow['apellido1esposam'])."<br />Fecha del Acta:".trim(dma_a_amd($aRow['fechaactam'])).".<br /> Num Acta: ".$aRow['nactam'].", Num Tomo:".$aRow['ntomom'];
				$sql = "SELECT 
						  estado.nombrestado, 
						  municipio.nombremunicipio, 
						  parroquia.nombreparroquia, 
						  ourc.nombreuh
						FROM 
						  public.estado, 
						  public.municipio, 
						  public.parroquia, 
						  public.ourc
						WHERE 
						  estado.codestado = municipio.codestadom AND
						  estado.codestado = parroquia.codestadop AND
						  estado.codestado = ourc.codestado AND
						  municipio.codmunicipio = parroquia.codmunicipiop AND
						  municipio.codmunicipio = ourc.codmunicipio AND
						  parroquia.codparroquia = ourc.codparroquia AND 
						  ourc.codestado={$aRow['codestadom']} AND
						  ourc.codmunicipio={$aRow['codmunicipiom']} AND
						  ourc.codparroquia={$aRow['codparroquiam']} AND
						  ourc.codof={$aRow['codofm']}";
				$resultado = $this->query($sql);
				$registro = pg_fetch_array($resultado);
				$ubicacionDelActa = "Estado: ".$registro["nombrestado"]."<br> Municipio: ".$registro["nombremunicipio"]."<br> Parroquia: ".$registro["nombreparroquia"]."<br> Ourc:".$registro["nombreuh"];
				break;
				case 'UEH':
				$datosActa="Unidos: ".trim($aRow['nombre1esposou'])." ".trim($aRow['apellido1esposou'])." y ".trim($aRow['nombre1esposau'])." ".trim($aRow['apellido1esposau'])."<br />Fecha del Acta:".trim(dma_a_amd($aRow['fechaactau'])).".<br /> Num Acta: ".$aRow['nactau'].", Num Tomo:".$aRow['ntomou'];
				$sql = "SELECT 
						  estado.nombrestado, 
						  municipio.nombremunicipio, 
						  parroquia.nombreparroquia, 
						  ourc.nombreuh
						FROM 
						  public.estado, 
						  public.municipio, 
						  public.parroquia, 
						  public.ourc
						WHERE 
						  estado.codestado = municipio.codestadom AND
						  estado.codestado = parroquia.codestadop AND
						  estado.codestado = ourc.codestado AND
						  municipio.codmunicipio = parroquia.codmunicipiop AND
						  municipio.codmunicipio = ourc.codmunicipio AND
						  parroquia.codparroquia = ourc.codparroquia AND 
						  ourc.codestado={$aRow['codestadou']} AND
						  ourc.codmunicipio={$aRow['codmunicipiou']} AND
						  ourc.codparroquia={$aRow['codparroquiau']} AND
						  ourc.codof={$aRow['codofu']}";
				$resultado = $this->query($sql);
				$registro = pg_fetch_array($resultado);
				$ubicacionDelActa = "Estado: ".$registro["nombrestado"]."<br> Municipio: ".$registro["nombremunicipio"]."<br> Parroquia: ".$registro["nombreparroquia"]."<br> Ourc:".$registro["nombreuh"];
				break;
			}
            
			$sOutput .= "[";
	        $sOutput .= '"'.trim($numSolicitud).'",';
	        $sOutput .= '"'.$aRow['tipoacta'].'",';
            $sOutput .= '"'.trim($nombres).'",';
			$sOutput .= '"'.trim(dma_a_amd($aRow['fecharegistrosoli'])).'",';
            $sOutput .= '"'.trim($datosActa).'",';
             $sOutput .= '"'.trim($ubicacionDelActa).'"';
            $sOutput .= "],";
        }

        $sOutput = substr_replace( $sOutput, "", -1 );

        $sOutput .= '] }';

        return $sOutput;
    }
    ////////////////////////////////////
	 ////////////////////////////////////
	function generarJsonVerSolicitudAsignarActas($rResult, $iTotal, $iFilteredTotal, $sEcho){
		include_once("../controlador/cambioformatofecha.php");
        $sOutput = '{';

        $sOutput .= '"sEcho": '.intval($sEcho).', ';

        $sOutput .= '"iTotalRecords": '.$iTotal.', ';

        $sOutput .= '"iTotalDisplayRecords": '.$iFilteredTotal.', ';

        $sOutput .= '"aaData": [ ';
		
        while ( $aRow = $this->resultadoFilas($rResult) ){
			
			$numSolicitud=$aRow['idsolicitud']."-".$aRow['anosolicitud'];
			$nombres = $aRow['nombreus']." ".$aRow['apellidous'];
			$datos="'".$aRow['idsolicitud']."||".$aRow['anosolicitud']."||".$aRow['usuarious']."||".$aRow['nombreus']."||".$aRow['apellidous']."'";
			switch ($aRow['tipoacta']){
				case 'NACIMIENTO':
				$datosActa="Presentado: ".trim($aRow['nombre1n'])." ".trim($aRow['apellido1n'])." Fecha del Acta:".trim(dma_a_amd($aRow['fechaactan'])).".<br /> Num Acta: ".$aRow['nactan'].", Num Tomo:".$aRow['ntomon'];
				break;
				case 'DEFUNCION':
				$datosActa="Difunto: ".trim($aRow['nombre1d'])." ".trim($aRow['apellido1d'])." Fecha del Acta:".trim(dma_a_amd($aRow['fechaactad'])).".<br /> Num Acta: ".$aRow['nactad'].", Num Tomo:".$aRow['ntomod'];
				break;
				case 'MATRIMONIO':
				$datosActa="Conyuges: ".trim($aRow['nombre1esposom'])." ".trim($aRow['apellido1esposom'])." y ".trim($aRow['nombre1esposam'])." ".trim($aRow['apellido1esposam'])." Fecha del Acta:".trim(dma_a_amd($aRow['fechaactam'])).".<br /> Num Acta: ".$aRow['nactam'].", Num Tomo:".$aRow['ntomom'];
				break;
				case 'UEH':
				$datosActa="Unidos: ".trim($aRow['nombre1esposou'])." ".trim($aRow['apellido1esposou'])." y ".trim($aRow['nombre1esposau'])." ".trim($aRow['apellido1esposau'])." Fecha del Acta:".trim(dma_a_amd($aRow['fechaactau'])).".<br /> Num Acta: ".$aRow['nactau'].", Num Tomo:".$aRow['ntomou'];
				break;
			}
            
			$sOutput .= "[";
	        $sOutput .= '"'.trim($numSolicitud).'",';
	        $sOutput .= '"'.$aRow['tipoacta'].'",';
            $sOutput .= '"'.trim($nombres).'",';
			$sOutput .= '"'.trim(dma_a_amd($aRow['fecharegistrosoli'])).'",';
            $sOutput .= '"'.trim($datosActa).'",';
            $sOutput .= '"'."<button class='btn btn-primary btn-xs' data-toggle='modal' data-target='#asignarActasUsuario' onclick=agregaFormAsignarActa($datos)><i class='fa fa-folder-open-o'></i></button>".'"';
            $sOutput .= "],";
        }

        $sOutput = substr_replace( $sOutput, "", -1 );

        $sOutput .= '] }';

        return $sOutput;
    }
    ////////////////////////////////////
    ////////////////////////////////////
	public function AsignarActa($idsolicitud, $anosolicitud, $rutaImagen,$cedulaUsuarioEntrega,$fecharepuestasoli){
		 
					$sql = "UPDATE solicitud
					  SET rutaimagenact='$rutaImagen', fecharepuestasoli='$fecharepuestasoli', solicerrada=TRUE, quienentreacta=$cedulaUsuarioEntrega
					  WHERE idsolicitud = $idsolicitud AND
					        anosolicitud = $anosolicitud ";
					$resultado = $this->query($sql);
			
		  if($resultado){
			  return 1;
		  }
		  else{
			  return 0;
		  }
															  
	}
////////////////////////////////////
	////////////////////////////////////
	public function estadisticas($cedulaUsuarioEntrega){
		$anosolicitud = date("Y");
		$sql = "SELECT COUNT(idsolicitud) AS totalsolicitud
			    FROM solicitud
			    WHERE anosolicitud =$anosolicitud";
		$resultado = $this->query($sql);
		$registro = pg_fetch_array($resultado);
		$totalsolicitud=$registro["totalsolicitud"];
		$sql1 = "SELECT COUNT(idsolicitud) as totalusuario
				FROM solicitud
				WHERE anosolicitud = $anosolicitud AND 
					  quienentreacta = $cedulaUsuarioEntrega";
		$resultado1 = $this->query($sql1);
		$registro1 = pg_fetch_array($resultado1);
		$totalusuario=$registro1["totalusuario"];
		$varEstadisticas = $totalsolicitud."||".$totalusuario;
			if($resultado){
			  return $varEstadisticas;
		 	}
		  else{
			  return 0;
		  	}
															  
	}
////////////////////////////////////
}///fin de la clase solictud
?>