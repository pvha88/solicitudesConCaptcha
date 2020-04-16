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
		    $nombre1esposo = trim(strtoupper($_POST["nombre1esposo"]));
			$nombre2esposo = trim(strtoupper($_POST["nombre2esposo"]));
			$apellido1esposo = trim(strtoupper($_POST["apellido1esposo"]));
			$apellido2esposo = trim(strtoupper($_POST["apellido2esposo"]));
			$nombre1esposa = trim(strtoupper($_POST["nombre1esposa"]));
			$nombre2esposa = trim(strtoupper($_POST["nombre2esposa"]));
			$apellido1esposa = trim(strtoupper($_POST["apellido1esposa"]));
			$apellido2esposa = trim(strtoupper($_POST["apellido2esposa"]));
            $guardo = $objSolicitud->actualizarSolicutudMatUeh($tipoacta,$nacta, $ntomo, $fechaacta,$idsolicitud, $anosolicitud,
															   $nombre1esposo, $nombre2esposo, $apellido1esposo, $apellido2esposo, 
														       $nombre1esposa, $nombre2esposa, $apellido1esposa, $apellido2esposa); 
				if($guardo){
					 echo"1";
				}else{
					 echo"0";
				}
   }
?>