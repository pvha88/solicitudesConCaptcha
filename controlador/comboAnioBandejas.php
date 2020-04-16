<?php
    $anioI = 2018;
    $anioF = (real)date("Y");
?>
    <select id="anio" class="form-control round-form" required name="anio" onchange="refrescarBandeja();"><?php
        for($i=$anioI; $i<=$anioF; $i++){
            if($i==$anioF){
                ?><option value="<?php echo $i; ?>" selected><?php echo $i;?></option><?php
            }else{
                ?><option value="<?php echo $i; ?>"><?php echo $i;?></option><?php
            }
        }
?>
   </select>