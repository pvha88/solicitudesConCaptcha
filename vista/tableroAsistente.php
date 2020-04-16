<?php include_once '../controlador/inicioSesion.php'; ?>
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
  <link type="text/css" rel="stylesheet" href="../Js/DataTables-1.10.2/media/css/jquery.dataTables.css"></link>
  <!-- Bootstrap core CSS -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
   <script src="../Js/jquery1.9.js"></script> 
  <script src="../Js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
  <script src="../Js/DataTables-1.10.2/media/js/jquery.dataTables.js" type="text/javascript"></script>
  <script src="../Js/verSolicitudesAsistente.js" type="text/javascript"></script>
  <script src="../Js/spin.min.js" type="text/javascript"></script>
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
       <!--sidebar start-->
    <?php 
        include_once("menu.php");
        $menu=menuroles($_SESSION['tipousuario']); 
    ?>
    <!--sidebar end-->
      <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <div class="row content-panel">
              
			  <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="descargarActas" class="tab-pane active">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Solicitudes activas de los usuarios</h4>
						<table id="canio">
								<input type = "hidden" name = "idusuario" value = "<?php echo $_SESSION["idusuario"];?> " id = "idusuario"/>
								<tr>
									<td><strong>A&ntilde;o de la solicitud:<strong></td>
									<td><?php include_once '../controlador/comboAnioBandejas.php'; ?></td>
								</tr>
							</table>
							<table align="center" border="1" id="tablaVerAsistente"  cellpadding="1"style=" background: #CCCCCC;">
								<thead>
									<tr>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-edit"></i>Solicitud N&uacute;mero</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-edit"></i>Tipo de Acta</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-user"></i>Nombre y Apellido Usuario</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-calendar"></i>Fecha de Registro</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-book"></i>Datos del Acta</strong></font></td>
                    <td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-book"></i>Datos de Ubicaci&oacute;n del Acta</strong></font></td>
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
    <!-- /MAIN CONTENT -->
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

</body>

</html>

