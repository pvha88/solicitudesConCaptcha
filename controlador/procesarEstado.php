<?php
    include_once '../modelo/ClassEstado.php';
    $objEstado = new ClassEstado();
    $estados = $objEstado->getAllEstados();
    echo "<option value=''>---</option>";
    foreach ($estados as $estado) {
        ?><option value="<?php echo $estado["codigo"] ?>"><?php echo trim($estado["nombre"]) ?></option><?php
    }
?>