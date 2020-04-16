<?php
include_once '../modelo/ClassParroquia.php';
if (isset($_POST["estado"]) && strlen($_POST["estado"])>0 && isset($_POST["municipio"]) && strlen($_POST["municipio"])>0){
    $objParroquia = new ClassParroquia();
    $parroquias = $objParroquia->getParroquiasByEstadoMunicipio($_POST["municipio"], $_POST["estado"]);
    foreach ($parroquias as $parroquia) {
        ?><option value="<?php echo $parroquia["codigo"];?>"><?php echo $parroquia["nombre"] ?></option><?php
    }
}
?>
