<?php

include_once "../controlador/conf.inc.php";

class claseConexion {
	/**
	 * variable para manejar la conexion
	 */
	private $dbh = null;
	/**
	 * variable que almacena el nombre del host
	 */
	private $dbHost;
	/**
	 * variable que almacena el login utilizado por la BD
	 */
	private $dbLogin;
	/**
	 * variable que almacena el password utilizado por la BD
	 */
	private $dbPassw;
	/**
	 * variable que almacena el nombre de la BD a utilizar
	 */
	private $dbName;
        /**
	 * variable que almacena el puerto de conexion a la BD a utilizar
	 */
        private $dbPort;
	
	/**
         * Contructor de la clase
         * 
         */
	function __construct() {
		
        $this->dbHost = DB_HOST;
		$this->dbLogin = DB_USER;
		$this->dbPassw = DB_PASSWORD;
		$this->dbName = DB_DBNAME;
        $this->dbPort = DB_PORT;
		$this->conectar ();
	}
	
	/**
	 * funcion para establecer la conexion con la BD
	 */
	function conectar() {
		
		if ($this->dbh == null) {
		
			$params = "host=" . $this->dbHost . " port= ".$this->dbPort." dbname=" . $this->dbName . " user=" . $this->dbLogin . " password=" . $this->dbPassw;
			//echo $params."<br/>";
                        $this->dbh = pg_connect ( $params );

			if (! $this->dbh ) {
				echo ' <script language="javascript">alert("Disculpe sus datos no son correctos ingres\u00e9los nuevamente.");</script> ';
				echo ' <meta http-equiv="refresh" content="0; url=../index.php"> ';
				exit();
			}
			
		}
	}
	
	/**
	 * funcion para terminar la conexion con la BD
	 */
	function desconectar() {
		/**
		 * TODO: la funcion pg_close no lanza excepciones
		 */
		try {
			$this->dbHost = "";
			$this->dbLogin = "";
			$this->dbPassw = "";
			$this->dbName = "";
			@pg_close ( $this->dbh );
		} catch ( Exception $e ) {
			var_dump ( $e->getMessage () );
		}
	}
}

?>
