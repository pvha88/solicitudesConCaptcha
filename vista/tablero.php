<?php include_once '../controlador/inicioSesion.php';?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Solicitudes Actas</title>

  <!-- Favicons -->
  <link href="../imagenes/favicon.ico" rel="icon">
  <!-- Bootstrap core CSS -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="../Js/DataTables-1.10.2/media/css/jquery.dataTables.css"></link>
  <!--external css-->
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
  <script src="../Js/jquery1.9.js"></script> 
  <script src="../Js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
  <script src="../Js/DataTables-1.10.2/media/js/jquery.dataTables.js" type="text/javascript"></script>
  <script src="../Js/verSolicitudes.js" type="text/javascript"></script>
  <script src="../Js/funciones.js" type="text/javascript"></script>
  <script src="../Js/spin.min.js" type="text/javascript"></script>
  <script>
			function ValidarNumero(e, campo){
					key = e.keyCode ? e.keyCode : e.which;
					if (key == 32) {return false;}
			}		
 
        </script>
</head>

<body>
  <section id="container">
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
     <a href="#" class="logo"><b>SOLICITUD<span> DE ACTAS</span></b></a>
      <!--logo end-->
      
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="?cerrar=true">Salir</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <?php 
        include_once("menu.php");
        $menu=menuroles($_SESSION['tipousuario']); 
    ?>
    <!--sidebar end-->
       <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
	  <!---AQUI--->

		<div class="row content-panel">
              
			  <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="soliActivas" class="tab-pane active">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Solicitudes Abiertas del usuario <?php echo$_SESSION["saludo"];?></h4>
						<table id="canio">
								<input type = "hidden" name = "idusuario" value = "<?php echo $_SESSION["idusuario"];?> " id = "idusuario"/>
								<tr>
									<td><strong>A&ntilde;o de la solicitud:<strong></td>
									<td><?php include_once '../controlador/comboAnioBandejas.php'; ?></td>
								</tr>
							</table>
							<table align="center" border="1" id="datos"  cellpadding="1"style=" background: #CCCCCC;">
								<thead>
									<tr>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-edit"></i>Solicitud N&uacute;mero</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-book"></i>Tipo de Acta</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-user"></i>Nombre y Apellido</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-calendar"></i>Fecha de Registro</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-book"></i>Datos del Acta</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-edit"></i>Editar Solicitud</strong></font></td>
									</tr>
								</thead>
								<tbody> 
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
								</tbody>
							</table>
						</div>
                      </div>
                    </div>
				</div>
             </div>
          </div>
       </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
	<!-- Modal para edicion de datos Nacimiento y defuncion-->
		<div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Actualizar Solicitud</h4>
			  </div>
			  <div class="modal-body">
					<input type="hidden" id="idsolicitudU" name="idsolicitud">
					<input type="hidden"  id="anosolicitudU" name="anosolicitud">
					<input type="hidden"  id="tipoactaU" name="tipoacta">
					<label>Numero de Acta</label>
					<input type="text" name="nacta" id="nactaU" required class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Numero de Tomo</label>
					<input type="text" name="ntomo" id="ntomoU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Fecha Acta</label>
					<input type="text" name="fechaacta" id="fechaactaU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Primer Nombre</label>
					<input type="text" name="nombre1" id="nombre1U" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Nombre</label>
					<input type="text" name="nombre2" id="nombre2U" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Primer Apellido</label>
					<input type="text" name="apellido1" id="apellido1U" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Apellido</label>
					<input type="text" name="apellido2" id="apellido2U" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">	
					 </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-warning" id="" onclick="actualizaDatosNacDef();" data-dismiss="modal">Actualizar</button>
				
			  </div>
			</div>
		  </div>
		</div>
        <!----fin modal edicion de datos Nacimiento y defuncion---->
		<!-- Modal para edicion de datos matricidio y UEH-->
		<div class="modal fade" id="modalEdicionMU" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Actualizar Solicitud</h4>
			  </div>
			  <div class="modal-body">
					<input type="hidden" id="idsolicitudMU" name="idsolicitud">
					<input type="hidden"  id="anosolicitudMU" name="anosolicitud">
					<input type="hidden"  id="tipoactaMU" name="tipoacta">
					<label>Numero de Acta</label>
					<input type="text" name="nacta" id="nactaMU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Numero de Tomo</label>
					<input type="text" name="ntomo" id="ntomoMU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Fecha Acta</label>
					<input type="text" name="fechaacta" id="fechaactaMU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Primer Nombre</label>
					<input type="text" name="nombre1" id="nombre1MU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Nombre</label>
					<input type="text" name="nombre2" id="nombre2MU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Primer Apellido</label>
					<input type="text" name="apellido1" id="apellido1MU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Apellido</label>
					<input type="text" name="apellido2" id="apellido2MU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">	
					<label>Primer Nombre</label>
					<input type="text" name="nombre1" id="nombre1esposaMU" class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Nombre</label>
					<input type="text" name="nombre1" id="nombre2esposaMU" class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Apellido</label>
					<input type="text" name="apellido2" id="apellido1esposaMU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">
					<label>Segundo Apellido</label>
					<input type="text" name="apellido2" id="apellido2esposaMU" required  class="form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)">					
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-warning" id="" onclick="actualizaDatosMatUeh();" data-dismiss="modal">Actualizar</button>
				
			  </div>
			</div>
		  </div>
		</div>
        <!----fin modal edicion de datos matricidio y UEH---->
		<!-- Modal para elimnar datos -->
		<div class="modal fade" id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Eliminar Solicitud</h4>
			  </div>
			  <div class="modal-body">
					
					
					<label>Numero de Solicitud</label>
					<input type="text" id="idsolicitudE" name="idsolicitud" class="form-control round-form" readOnly="readOnly">
					<label>A&ntilde;o de Solicitud</label>
					<input type="text"  id="anosolicitudE" name="anosolicitud" class="form-control round-form" readOnly="readOnly">
					<label>Tipo de Acta</label>
					<input type="text" name="nombre1E" id="tipoactaE" class="form-control round-form" readOnly="readOnly">
					<label>Primer Nombre</label>
					<input type="text" name="nombre1E" id="nombreE" class="form-control round-form" readOnly="readOnly">
					<label>Primer Apellido</label>
					<input type="text" name="apellido1E" id="apellidoE" class="form-control round-form" readOnly="readOnly">
							
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-warning" id="eliminarDatos" onclick="eliminarDatos();" data-dismiss="modal">Eliminar</button>
				
			  </div>
    </div>
  </div>
</div>
        <!----fin modal---->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          <strong>OFICINA NACIONAL DE REGISTRO CIVIL</strong>
        </p>
        
        <a href="blank.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  
  <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="../lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="../lib/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="../lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../lib/jquery.scrollTo.min.js"></script>
  <script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <!--script for this page-->
<script type="text/javascript">
        $('#actualizaDatosNacDef').click(function(){
          actualizaDatosNacDef();
			});
		$('#actualizaDatosMatUeh').click(function(){
          actualizaDatosMatUeh();
			});
	$('#eliminarDatos').click(function(){
          eliminarDatosSolicitud();
			});
</script>
</body>

</html>
