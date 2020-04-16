<?php
include_once ('../modelo/claseSolicitud.php');
include_once ('../modelo/claseTablaDinamica.php');
$objSolicitud = new claseSolicitud();
$objTD = new claseTablaDinamica();

if(isset($_GET['iDisplayStart'])){

    $displayStart = $_GET['iDisplayStart'];

    } else{ $displayStart = null;}


if(isset($_GET['iDisplayLength'])){ if($_GET['iDisplayLength'] != -1){$displayLength=$_GET['iDisplayLength'];}

}else{$displayLength = null;}


if (isset($_GET['iSortingCols'])){

    $sortingCols = $_GET['iSortingCols'];


    for ( $i=0 ; $i< $sortingCols  ; $i++ ){

    $sortCol[] = $_GET['iSortCol_'.$i];

    $sortDir[] = $_GET['sSortDir_'.$i];

    $i++;}

}else{$sortingCols = null;}


if(isset($_GET['sSearch'])){


    $search=$_GET['sSearch'];


}else{ $search=null;}


if(isset($_GET['sEcho'])){$sEcho=$_GET['sEcho'];}else{
 $sEcho=null;}

 

$anio = trim($_GET['anio']);


		$select = "     s.idsolicitud, 
						s.anosolicitud, 
						s.tipoacta, 
						s.fecharegistrosoli, 
						us.nombre as nombreus, 
						us.apellido as apellidous,
						n.nacta as nactan, 
						n.ntomo as ntomon, 
						n.fechaacta as fechaactan, 
						n.nombre1 as nombre1n, 
						n.nombre2 as nombre2n, 
						n.apellido1 as apellido1n, 
						n.apellido2 as apellido2n,
						n.codestado as codestadon,
						n.codmunicipio as codmunicipion,
						n.codparroquia as codparroquian,
						n.codof as codofn,
						d.nacta as nactad, d.ntomo as ntomod, 
						d.fechaacta as fechaactad, 
						d.nombre1 as nombre1d, 
						d.nombre2 as nombre2d, 
						d.apellido1 as apellido1d, 
						d.apellido2 as apellido2d, 
						d.codestado as codestadod,
						d.codmunicipio as codmunicipiod,
						d.codparroquia as codparroquiad,
						d.codof as codofd,
						u.nacta as nactau, 
						u.ntomo as ntomou, 
						u.fechaacta as fechaactau, 
						u.nombre1esposo as nombre1esposou, 
						u.nombre2esposo as nombre2esposou, 
						u.apellido1esposo as apellido1esposou, 
						u.apellido2esposo as apellido2esposou, 
						u.nombre1esposa as nombre1esposau, 
						u.nombre2esposa as nombre2esposau, 
						u.apellido1esposa as apellido1esposau, 
						u.apellido2esposa as apellido2esposau, 
						u.codestado as codestadou,
						u.codmunicipio as codmunicipiou,
						u.codparroquia as codparroquiau,
						u.codof as codofu,
						m.nacta as nactam, m.ntomo as ntomom, 
						m.fechaacta as fechaactam, 
						m.nombre1esposo as nombre1esposom, 
						m.nombre2esposo as nombre2esposom, 
						m.apellido1esposo as apellido1esposom, 
						m.apellido2esposo as apellido2esposom, 
						m.nombre1esposa as nombre1esposam, 
						m.nombre2esposa as nombre2esposam, 
						m.apellido1esposa as apellido1esposam, 
						m.apellido2esposa as apellido2esposam,
						m.codestado as codestadom,
						m.codmunicipio as codmunicipiom,
						m.codparroquia as codparroquiam,
						m.codof as codofm";
			$tabla = " solicitud as s 
						LEFT JOIN defuncion d ON d.anosolicitud = s.anosolicitud AND d.idsolicitud = s.idsolicitud
						LEFT JOIN nacimiento n ON n.anosolicitud = s.anosolicitud AND n.idsolicitud = s.idsolicitud
						LEFT JOIN ueh u ON u.anosolicitud = s.anosolicitud AND u.idsolicitud = s.idsolicitud
						LEFT JOIN matrimonio m ON m.anosolicitud = s.anosolicitud AND m.idsolicitud = s.idsolicitud 
						LEFT JOIN usuario us ON us.idusuario = s.idusuario ";
			$where = " s.eliminada = false AND s.solicerrada='false' AND s.anosolicitud = $anio ";


            
   

          
$camposBuscar= array(
                 0=> "s.idsolicitud",
                 1=> "s.anosolicitud",
                 2=> "tipoacta",
                 3=> "fecharegistrosoli");

$camposOrdenar= array(
                 0=> "s.idsolicitud",
                 1=> "s.anosolicitud",
                 2=> "tipoacta",
                 3=> "fecharegistrosoli");
$limit = array(0=>$displayStart, 1=>$displayLength);

//echo "select ".$select." from ".$tabla." where ".$where;
/**
 * Se llama a este metodo para generar los elementos necesarios para crear el json correspondiente
 */
$comp = $objTD->generarQuery($select, $tabla, $joins=null, $where, $sortCol, $sortDir, $sortingCols, $limit, $groupby=null, $camposBuscar, $search, $sEcho, $camposOrdenar);
// $comp;
/**
 * este metodo debe crearse en la clase de el modulo que se va  a utilizar para incluir
 * los elementos correspondientes a cada tabla que se genere
 */
echo $objSolicitud->generarJsonVerSolicitudAsistente($comp[0], $comp[1], $comp[2], $comp[3]);




?>
