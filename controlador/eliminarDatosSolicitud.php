<?php
 if(isset($_POST)){
            include_once ('../modelo/claseSolicitud.php');       
            $objSolicitud = new claseSolicitud();
			$idsolicitud = $_POST["idsolicitud"];
			$anosolicitud = $_POST["anosolicitud"];
			$guardo = $objSolicitud->eliminarSolicitud($idsolicitud, $anosolicitud); 
				if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}
   }
?>