<?php
	$_SESSION["usuario"] = $_POST["usuario"];
	$_SESSION["clave"]=$_POST["clave"];
	$login = $_POST["login"];
	if($_SESSION["usuario"] != "" AND $login == 1){$usuario = $_SESSION["usuario"]; }else{$usuario = "postgres";}
	if($_SESSION["clave"] != "" AND $login == 1){$clave = $_SESSION["clave"];}else{$clave = "123456";}
	define("DB_HOST", "localhost");
	define("DB_PORT", "5432");
	define("DB_USER", "$usuario");
	define("DB_PASSWORD", "$clave");
	define("DB_DBNAME", "solicitudactas");


?>
