<?php
/*este archivo es una funci�n para establecer la conexi�n*/
function Conectarse($usuario, $clave)
{
if (!($conexion = pg_connect("host=localhost
                              dbname=sulicitudactas
                              port=5432
                              user=postgres 
                              password=123456 ")))
{
header("Location: ../opcion_invalida.html");exit();
}

return $conexion;
}

function desconectar()
{
	pg_close();
}
?>
