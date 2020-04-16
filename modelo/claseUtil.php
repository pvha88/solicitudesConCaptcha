<?php

class claseUtil {

	const SHOW_FORMAT_PERIOD = "Y-m";
	
	const SHOW_FORMAT_DATE = 'd/m/Y';
	
	const SHOW_FORMAT_TIME = 'h:i:s a';
	
	const SHOW_FORMAT_DATE_TIME = 'd/m/Y h:i:s a';
	
	const DB_FORMAT_DATE = 'Y-m-d H:i:s';
	
	const MILES_SEPARATOR = '.';
	
	const DECIMAL_SEPARATOR = ',';
	
	private function __construct() {
		
	}
	 
	/**
	 * transforma una cadena de fecha internacional al formato indicado
	 *
	 * @param string date $internationalDate
	 * @param string $format
	 * @return string fecha formateada 
	 */
	static public function getLocalDate($internationalDate, $format = 'd/m/Y H:i:s' ) {
		
		if(strlen($internationalDate) < 1) {
			return '';
		}
		
		$date = new DateTime($internationalDate);
		
		return $date->format($format);
		
	}
	
//	static public function stringToDate($str, $format = 'Y-m-d H:i:s') {
//		$date = new DateTime();
//	}
	
	/**
	 * covierte las cadenas de numeros formateados a
	 * números flotantes
	 * 
	 *
	 * @param string
	 * @return float
	 */
	static public function stringToNumber($strNum) {
		
		if( is_numeric($strNum) ) {
			return $strNum;
		}
		
		$strNum = str_replace(self::MILES_SEPARATOR, '', $strNum);
		
		return str_replace (self::DECIMAL_SEPARATOR, '.', $strNum);
		
	}
	
	static  public function numberToString($num, $decimal_palces = 2) {
		return number_format($num,$decimal_palces,self::DECIMAL_SEPARATOR,self::MILES_SEPARATOR);
	}
	
	/**
	 * retorna la fecha actual en el formato deseado 
	 * nota: ver formatos definidos en ClassUtil
	 */
	static public function now($format = ClassUtil::SHOW_FORMAT_DATE) {
		return date($format);
	}
	
	static public function localDateToDbDate($lDate) {

		if(strlen($lDate) < 1) {
			return '';
		}
		// para el formato 'd/m/Y h:i:s a' o 'd/m/Y H:i:s'
		$hour = null;
		
		$tmp = explode(' ', $lDate);
		
		$date = explode('/', $tmp[0]);
		
		$dbDate = implode('-',array($date[2],$date[1],$date[0])); 
		
		// tiene hora
		if( isset($tmp[1]) ) {
			$hour = explode(':', $tmp[1]);

			// es en formato 12 horas
			if(isset($tmp[2]) && strtolower($tmp[2]) == 'p' ) {
				$hour[0] += 12;
			}
			
			$dbDate .= ' ' . implode(':',array($hour[0], $hour[1], $hour[2]));
			
		}
		
		return $dbDate;
	}
        /**
        * funcion nos puede servir para poder poner la fecha en cualquier
        * formato al Español ya sea por mes, año y día
        * Sí la fecha es el 1979-03-05 (Formato en Ingles),
        * La función  escribiría 05 de Marzo de 2009.
        * Sí queremos cambiar una fecha de la base de datos al Español sería así:
        * cambiar_fecha($sql[mi-fecha], "d-m-Y");
        * Sí queremos que también nos muestre la hora solo ponemos "H:i"
        * cambiar_fecha($sql[mi-fecha], "d-m-Y H:i");
        * Y sí queremos con más precisión, solo agregamos los segundos s (minúscula).
        * cambiar_fecha($sql[mi-fecha], "d-m-Y H:i:s");
        * Y sí queremos cambiar una fecha en Español y la queremos insertar
        * en la base de datos ponemos la fecha en Ingles que sería:
        * cambiar_fecha($_POST['fecha'], "Y-m-d");
        * Mostrar sólo el año en 4 cifras: cambiar_fecha($sql[mi-fecha], "Y");
        * Mostrar sólo el año en 2 cifras: cambiar_fecha($sql[mi-fecha], "y");
        * Mostrar el Mes en número: cambiar_fecha($sql[mi-fecha], "m");
        * Mostrar el Mes con tres letras en Español: cambiar_fecha($sql[mi-fecha], "M");
        * Mostrar el Mes completo en Español: cambiar_fecha($sql[mi-fecha], "F");
        * Mostrar el día en númors: cambiar_fecha($sql[mi-fecha], "d");
        */
        static public function cambiar_fecha($fecha, $formato){

            $H="00"; $i="00"; $s="00"; $F=""; $M=""; $num_mes=0;

            $Meses = array("","Enero","Febrero","Marzo","Abril","Mayo", "Junio","Julio",
            "Agosto","Septiembre","Octubre","Noviembre","Diciembre");
            $meses = array("","Ene","Feb","Mar","Abr","May","Jun","Jul" ,"Ago","Sep","Oct","Nov","Dic");

            //Fecha recibida en ingles con hora
            if(preg_match   ( "/([0-9]{4})-([0-9]{1,2})-([0-9]{1,2}) ([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})/", $fecha, $mifecha)){
                $num_mes=$mifecha[2]; settype($num_mes, "integer");
                $d=$mifecha[3]; $m=$mifecha[2]; $F=$Meses[$num_mes]; $M=$meses[$num_mes]; $Y=$mifecha[1];
                $H=$mifecha[4]; $i=$mifecha[5]; $s=$mifecha[6];
            }
            //Fecha recibida en español con hora
            elseif(preg_match( "/([0-9]{1,2})-([0-9]{1,2})-([0-9]{4}) ([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})/", $fecha, $mifecha)){
                $num_mes=$mifecha[2]; settype($num_mes, "integer");
                $d=$mifecha[1]; $m=$mifecha[2]; $F=$Meses[$num_mes]; $M=$meses[$num_mes]; $Y=$mifecha[3];
                $H=$mifecha[4]; $i=$mifecha[5]; $s=$mifecha[6];
            }
            //Fecha recibida en ingles sin hora
            elseif(preg_match( "/([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})/", $fecha, $mifecha)){
                $num_mes=$mifecha[2]; settype($num_mes, "integer");
                $d=$mifecha[3]; $m=$mifecha[2]; $F=$Meses[$num_mes]; $M=$meses[$num_mes]; $Y=$mifecha[1];
            }
            //Fecha recibida en español sin hora
            elseif(preg_match( "/([0-9]{1,2})-([0-9]{1,2})-([0-9]{4})/", $fecha, $mifecha)){
                $num_mes=$mifecha[2]; settype($num_mes, "integer");
                $d=$mifecha[1]; $m=$mifecha[2]; $F=$Meses[$num_mes]; $M=$meses[$num_mes]; $Y=$mifecha[3];
            }
            elseif(preg_match( "/([0-9]{1,2})\/([0-9]{1,2})\/([0-9]{4})/", $fecha, $mifecha)){
                $num_mes=$mifecha[2]; settype($num_mes, "integer");
                $d=$mifecha[1]; $m=$mifecha[2]; $F=$Meses[$num_mes]; $M=$meses[$num_mes]; $Y=$mifecha[3];
            }
            // Variable [y] ultimas dos cifras del año
            $y = substr($Y, 2);

            $formato = preg_replace( "/d/", $d, $formato ); // [d] días
            $formato = preg_replace( "/m/", $m, $formato ); // [m] mes con numeros
            $formato = preg_replace( "/Y/", $Y, $formato ); // [Y] año de 4 cifras
            $formato = preg_replace( "/y/", $y, $formato ); // [y] año de 2 cifras
            $formato = preg_replace( "/H/", $H, $formato ); // [H] hora de 0 a 23
            $formato = preg_replace( "/i/", $i, $formato ); // [i] minutos de 0 a 59
            $formato = preg_replace( "/s/", $s, $formato ); // [s] segundos de 0 a 59
            // Tienen que ir al final porque llevan texto para no ser reemplazado
            $formato = preg_replace( "/M/", $M, $formato ); // [M] mes con 3 letras
            $formato = preg_replace( "/F/", $F, $formato ); // [F] mes con letras completo

            return $formato;
          }
          
	/**
	 * Funcion util para mostrar los nombres y apellidos, por ejemplo de usuarios del sistema
	 * 
	 * ejemplo de uso: 
	 * 		$arrEjemplo= array();
	 * 		$arrEjemplo = ClassUtil::mostrarNombresApellidos($strNombres,$strApellidos);
	 *
	 * @param string $strNombres
	 * @param string $strApellidos
	 * @return array
	 */
	static function mostrarNombresApellidos($strNombres, $strApellidos){
		$arrReturn= array();
		$arrNombres= array();
		$arrNombres= explode(" ", $strNombres);
		$arrApellidos= array();
		$arrApellidos= explode(" ", $strApellidos);
		$arrReturn["nombres"]="";
		$arrReturn["apellidos"]="";
		foreach ($arrNombres as $nombre){
			$primera= strtoupper(substr($nombre,0,1));
			$nombres= substr(strtolower($nombre),1);
			$nombres= $primera.$nombres." ";
			$arrReturn["nombres"].= $nombres;
		}
		foreach ($arrApellidos as $apellido){
			$primera= strtoupper(substr($apellido,0,1));
			$apellidos= substr(strtolower($apellido),1);
			$apellidos= $primera.$apellidos." ";
			$arrReturn["apellidos"].= $apellidos;
		}
		$arrReturn["nombres"]= trim($arrReturn["nombres"]);
		$arrReturn["apellidos"]= trim($arrReturn["apellidos"]);
		return $arrReturn;
	}

        static function FechaFormateada($FechaStamp){
            $ano = date('Y',$FechaStamp);
            $mes = date('n',$FechaStamp);
            $dia = date('d',$FechaStamp);
            $hora = date('h:i a',$FechaStamp);
            $diasemana = date('w',$FechaStamp);

            $diassemanaN= array("Domingo","Lunes","Martes","Mi&eacute;rcoles",
            "Jueves","Viernes","S&aacute;bado");
            $mesesN=array(1=>"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio",
            "Agosto","Septiembre","Octubre","Noviembre","Diciembre");
            return $diassemanaN[$diasemana]." $dia de ". $mesesN[$mes] ." de $ano, $hora";
        }

        static function array_sort($array, $on, $order=SORT_ASC)
        {
            $new_array = array();
            $sortable_array = array();

            if (count($array) > 0) {
                foreach ($array as $k => $v) {
                    if (is_array($v)) {
                        foreach ($v as $k2 => $v2) {
                            if ($k2 == $on) {
                                $sortable_array[$k] = $v2;
                            }
                        }
                    } else {
                        $sortable_array[$k] = $v;
                    }
                }

                switch ($order) {
                    case SORT_ASC:
                        asort($sortable_array);
                    break;
                    case SORT_DESC:
                        arsort($sortable_array);
                    break;
                }

                foreach ($sortable_array as $k => $v) {
                    $new_array[$k] = $array[$k];
                }
            }

            return $new_array;
        }
        
        static function abrirArchivo($archivo)
	{
		$fp = fopen($archivo,"r");
		$contenido = fread($fp, 900000);
		fclose($fp);
		return $contenido;
	}
}

?>