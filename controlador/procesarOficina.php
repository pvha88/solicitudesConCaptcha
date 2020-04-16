<?php
include_once '../modelo/ClassOficina.php';
    
    $objOficina = new ClassOficina();
    $oficinas = $objOficina->oficinaPorParroquia($_POST["estado"], $_POST["municipio"], $_POST["parroquia"]);
    echo "<option value=''>---</option>";
    foreach ($oficinas as $oficina) {
        ?><option value="<?php echo $oficina["codof"] ?>"><?php echo trim($oficina["nombreuh"]) ?></option><?php
    }

?>