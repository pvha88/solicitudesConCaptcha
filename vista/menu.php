<?php
function menuroles($perfil){
/////////////////////////////
echo'<aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><img src="'.$_SESSION['rutaimagen'].'" class="img-circle" width="80"></p>

          <h5 class="centered"><a href="configuracion.php" style="color:#ffffff;"><i class="fa fa-cogs"></i></a> '.$_SESSION['saludo'].'</h5>';
          
/////////////////////////////////
if($perfil == "USUARIO"){
echo'

      <li class="mt">	    
        <a href="tablero.php">
              <i class="fa fa-dashboard"></i>
              <span>Tablero</span></a>
		</li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Solicitar Actas</span></a>
            <ul class="sub">
              <li><a href="solicitud.php?tipoacta=nacimiento">Nacimiento</a></li>
              <li><a href="solicitud.php?tipoacta=ueh">Union Estable de Hecho</a></li>
              <li><a href="solicitud.php?tipoacta=matrimonio">Matrimonio</a></li>
              <li><a href="solicitud.php?tipoacta=defuncion">Defuncion</a></li>
            </ul>
	    </li>
		<li>
            <a href="descargarActas.php">
              <i class="fa fa-download"></i>
              <span>Descargar Actas</span>
              </a>
          </li>
        <!-- sidebar menu end-->';
}
/////////////////////////////////
if($perfil == "ASISTENTE"){
echo'

      <li class="mt">	    
        <a href="tableroAsistente.php">
              <i class="fa fa-dashboard"></i>
              <span>Tablero</span></a>
		</li>
		<li>	    
        <a href="asignarActas.php">
              <i class="fa fa-book"></i>
              <span>Asignar Actas</span></a>
		</li>
     <!-- <li>      
        <a href="estadisticas.php?cedulaUsuarioEntrega='.$_SESSION['cedula'].'">
              <i class="fa fa-bar-chart-o"></i>
              <span>Estadisticas</span></a>
    </li>-->
        <!-- sidebar menu end-->';
}
////////////////////////////////////
if($perfil == "ADMINISTRADOR"){
echo'

      <li class="mt">     
        <a href="tableroAdministrador.php">
              <i class="fa fa-dashboard"></i>
              <span>Tablero</span></a>
    </li>
        <!-- sidebar menu end-->';
}
////////////////////////////////////
echo' </div>
    </aside>';
}//fin menuroles