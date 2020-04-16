<?php
 if(isset($_POST)){
            include_once ('../modelo/claseSolicitud.php');       
            $objSolicitud = new claseSolicitud();
			$idsolicitud = $_POST["idsolicitud"];
			$anosolicitud = $_POST["anosolicitud"];
			$tipoacta = trim(strtoupper($_POST["tipoacta"]));
			$nacta = $_POST["nacta"];
			$ntomo = $_POST["ntomo"];
			$fechaacta = $_POST["fechaacta"];
			$nombre1 = trim(strtoupper($_POST["nombre1"]));
			$apellido1 = trim(strtoupper($_POST["apellido1"]));
			$nombre2 = trim(strtoupper($_POST["nombre2"]));
			$apellido2 = trim(strtoupper($_POST["apellido2"]));
            $guardo = $objSolicitud->insertarSolicitudNacDef($tipoacta,$nacta, $ntomo, $fechaacta,$idsolicitud, $anosolicitud, $nombre1, $nombre2,$apellido1, $apellido2); 
				if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}
   }
?>