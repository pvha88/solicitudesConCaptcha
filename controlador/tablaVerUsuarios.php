<?php
include_once '../modelo/claseUsuarioAdministrador.php';
include_once '../modelo/claseTablaDinamica.php';
$objUsuario = new claseUsuarioAdministrable();
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
 $select = " * ";
 $tabla = " usuario ";
// $where = " ";


            
   

          
$camposBuscar= array(
                 0=> "idusuario",
                 1=> "cedula",
                 2=> "nombre",
                 3=> "apellido");

$camposOrdenar= array(
                 0=> "idusuario",
                 1=> "cedula",
                 2=> "nombre",
                 3=> "apellido");
$limit = array(0=>$displayStart, 1=>$displayLength);

//echo "select ".$select." from ".$tabla." where ".$where;
/**
 * Se llama a este metodo para generar los elementos necesarios para crear el json correspondiente
 */
$comp = $objTD->generarQuery($select, $tabla, $joins=null, $where, $sortCol, $sortDir, $sortingCols, $limit=null, $groupby=null, $camposBuscar, $search, $sEcho, $camposOrdenar);
// $comp;
/**
 * este metodo debe crearse en la clase de el modulo que se va  a utilizar para incluir
 * los elementos correspondientes a cada tabla que se genere
 */
echo $objUsuario->generarJsonVerUsuarios($comp[0], $comp[1], $comp[2], $comp[3]);




?>
