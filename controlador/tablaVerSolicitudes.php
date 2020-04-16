<?php
include_once '../modelo/claseSolicitud.php';
include_once '../modelo/claseTablaDinamica.php';
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

 
$idusuario = trim($_GET['idusuario']);
$anio = trim($_GET['anio']);


	$select = "   s.idsolicitud, 
						  s.anosolicitud, 
						  s.tipoacta, 
						  s.fecharegistrosoli,
						  n.nacta as nactan, 
						  n.ntomo as ntomon,
						  n.fechaacta as fechaactan,
						  n.nombre1 as nombre1n,
						  n.nombre2 as nombre2n,
						  n.apellido1 as apellido1n,
						  n.apellido2 as apellido2n,  
						  d.nacta as nactad, 
						  d.ntomo as ntomod,
						  d.fechaacta as fechaactad,
						  d.nombre1 as nombre1d,
						  d.nombre2 as nombre2d,
						  d.apellido1 as apellido1d,
						  d.apellido2 as apellido2d,
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
						  m.nacta as nactam, 
						  m.ntomo as ntomom,  
						  m.fechaacta as fechaactam,  
						  m.nombre1esposo as nombre1esposom, 
						  m.nombre2esposo as nombre2esposom,  
						  m.apellido1esposo as apellido1esposom,  
						  m.apellido2esposo as apellido2esposom,  
						  m.nombre1esposa as nombre1esposam,  
						  m.nombre2esposa as nombre2esposam,  
						  m.apellido1esposa as apellido1esposam,  
						  m.apellido2esposa as apellido2esposam  ";
			$tabla = " solicitud as s 
						  LEFT JOIN defuncion d ON d.anosolicitud=s.anosolicitud and d.idsolicitud=s.idsolicitud
						  LEFT JOIN nacimiento n ON n.anosolicitud=s.anosolicitud and n.idsolicitud=s.idsolicitud
						  LEFT JOIN ueh u ON u.anosolicitud=s.anosolicitud and u.idsolicitud=s.idsolicitud
						  LEFT JOIN matrimonio m ON m.anosolicitud=s.anosolicitud and m.idsolicitud=s.idsolicitud ";
			$where = " eliminada = false AND solicerrada='false' AND idusuario = $idusuario AND s.anosolicitud = $anio ";


            
   

          
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
$comp = $objTD->generarQuery($select, $tabla, $joins=null, $where, $sortCol, $sortDir, $sortingCols, $limit=null, $groupby=null, $camposBuscar, $search, $sEcho, $camposOrdenar);
//echo $comp;
/**
 * este metodo debe crearse en la clase de el modulo que se va  a utilizar para incluir
 * los elementos correspondientes a cada tabla que se genere
 */
echo $objSolicitud->generarJsonVerSolicitud($comp[0], $comp[1], $comp[2], $comp[3]);




?>
