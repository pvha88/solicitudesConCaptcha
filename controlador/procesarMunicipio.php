<?php
include_once '../modelo/ClassMunicipio.php';
if (isset($_POST["estado"]) && strlen($_POST["estado"])>0){
    $objMunicipio = new ClassMunicipio();
    $municipios = $objMunicipio->getMunicipiosByEstado($_POST["estado"]);
    foreach ($municipios as $municipio) {
        ?><option value="<?php echo $municipio["codigo"];?>"><?php echo $municipio["nombre"] ?></option><?php
    }
}
?>
