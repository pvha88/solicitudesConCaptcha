<?php
   if(isset($_POST["enviar"])){
            include_once ('../modelo/claseSolicitud.php');       
            $objSolicitud = new claseSolicitud();
			$tipoacta = trim(strtoupper($_POST["tipoacta"]));
			$tipoactaRetorno = strtolower($tipoacta);
			$nombre1 = trim(strtoupper($_POST["nombre1"]));
			$apellido1 = trim(strtoupper($_POST["apellido1"]));
			$nombre2 = trim(strtoupper($_POST["nombre2"]));
			$apellido2 = trim(strtoupper($_POST["apellido2"]));
			$nombre1esposo = trim(strtoupper($_POST["nombre1esposo"]));
			$nombre2esposo = trim(strtoupper($_POST["nombre2esposo"]));
			$apellido1esposo = trim(strtoupper($_POST["apellido1esposo"]));
			$apellido2esposo = trim(strtoupper($_POST["apellido2esposo"]));
			$nombre1esposa = trim(strtoupper($_POST["nombre1esposa"]));
			$nombre2esposa = trim(strtoupper($_POST["nombre2esposa"]));
			$apellido1esposa = trim(strtoupper($_POST["apellido1esposa"]));
			$apellido2esposa = trim(strtoupper($_POST["apellido2esposa"]));
			$nacta = $_POST["nacta"];
			$ntomo = $_POST["ntomo"];
			$fechaacta = $_POST["fechaacta"];
			$codestado = $_POST["comboEstado"];
			$codmunicipio = $_POST["comboMunicipio"];
			$codparroquia = $_POST["comboParroquia"];
			$codof = $_POST["comboOficina"];
			$idusuario = $_POST["idusuario"];
			//
            $guardo = $objSolicitud->insertarSolicutudNac($tipoacta,$nacta, $ntomo, $fechaacta, $nombre1, $nombre2,$apellido1, $apellido2,
														  $nombre1esposo, $nombre2esposo, $apellido1esposo, $apellido2esposo, 
														  $nombre1esposa, $nombre2esposa, $apellido1esposa, $apellido2esposa,
														  $codestado, $codmunicipio, $codparroquia, $codof, $idusuario); 
				if($guardo){
					echo ' <script language="javascript">alert("La solicitud se ingreso exitosamente");</script> ';
					echo ' <meta http-equiv="refresh" content="0; url=../vista/solicitud.php?tipoacta='.$tipoactaRetorno.'"> ';
				}else{
					echo ' <script language="javascript">alert("La solicitud no se ingreso");</script> ';
					echo ' <meta http-equiv="refresh" content="0; url=../vista/solicitud.php?tipoacta='.$tipoactaRetorno.'"> ';
				}
   }
?>