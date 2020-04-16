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
  <!-- Bootstrap core CSS -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
</head>

<body>
  <section id="container">
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="#" class="logo"><b>SOLICITUD<span>ACTAS</span></b></a>
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
        
            <div class="row content-panel">
			 <div class="profile-pic">
                  <p><img src="<?php echo $_SESSION['rutaimagen'];?>" class="img-circle"></p>
                </div>
                <h4><?php echo $_SESSION['saludo'];?></h4>
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#edit">Editar Perfil</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#cambiarClave" class="contact-map">Cambiar Clave</a>
                  </li>
				  <li>
                    <a data-toggle="tab" href="#agregarAvatar" class="contact-map">Cambiar Avatar</a>
                  </li>
                </ul>
              </div>
			  <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="edit" class="tab-pane active">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Informaci&oacute;n Personal</h4>
                        <form role="form" class="form-horizontal" enctype="multipart/form-data"  method="POST" action="../controlador/modificarDatosDeUsuario.php">
						  <input type="hidden" name="idusuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['idusuario'];?>" readOnly="readOnly">
						   <div class="form-group ">
							<label for="cname" class="control-label col-lg-2">Tipo de Documento</label>
							<div class="col-lg-6">
							  <select class="form-control round-form" name="tipodocumento">
								<?php if($_SESSION['tipodocumento'] == "C"){?>
								<option value="C" selected>Cedula</option>
								<option value="P" >Pasaporte</option>
								<?php } if($_SESSION['tipodocumento'] == "P"){?>
								<option value="C" >Cedula</option>
								<option value="P" selected>Pasaporte</option>
								<?php } ?>
							  </select>
							</div>
						  </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">C&eacute;dula</label>
                            <div class="col-lg-6">
                              <input type="text" name="cedula" id="c-name" class="form-control round-form" minlength="2" maxlength="30" value="<?php echo $_SESSION['cedula'];?>" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Nombre</label>
                            <div class="col-lg-6">
                             <input type="text" name="nombre" id="c-name" class="form-control round-form" minlength="4" maxlength="30" value="<?php echo $_SESSION['nombre'];?>" required>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Apellido</label>
                            <div class="col-lg-6">
                              <input type="text" name="apellido" id="c-name" class="form-control round-form" minlength="4" maxlength="30" value="<?php echo $_SESSION['apellido'];?>" required>
                            </div>
                          </div>
						  <div class="form-group">
                            <label class="col-lg-2 control-label">Usuario</label>
                            <div class="col-lg-6">
                              <input type="text" name="usuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['usuario'];?>" required readOnly="readOnly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Correo</label>
                            <div class="col-lg-6">
                              <input class="form-control round-form" id="ccorreo" type="email" name="correo" value="<?php echo $_SESSION['correo'];?>" required>
                            </div>
                          </div>
                      </div>
                       <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-round btn-primary" type="submit">Modificar</button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <!-- /col-lg-8 -->
                    </div>
                  <!-- /tab-pane -->
                  <div id="cambiarClave" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Informaci&oacute;n de Cambio de Clave</h4>
                        <form role="form" class="form-horizontal" method="POST" action="../controlador/modificarClaveDeUsuario.php">
						<input type="hidden" name="cambiaPass" id="c-name" class="form-control round-form" value="1" >
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Nombre</label>
                            <div class="col-lg-6">
                             <input type="text" name="" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['nombre'];?>" required readOnly="readOnly">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Apellido</label>
                            <div class="col-lg-6">
                              <input type="text" name="" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['apellido'];?>" required readOnly="readOnly">
                            </div>
                          </div>
						  <div class="form-group">
                            <label class="col-lg-2 control-label">Usuario</label>
                            <div class="col-lg-6">
                              <input type="text" name="usuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['usuario'];?>" required readOnly="readOnly"> 
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Correo</label>
                            <div class="col-lg-6">
                              <input class="form-control round-form" id="ccorreo" type="email" name="correo" value="<?php echo $_SESSION['correo'];?>" required readOnly="readOnly">
                            </div>
                          </div>
						  <div class="form-group">
                            <label class="col-lg-2 control-label">Clave</label>
                            <div class="col-lg-6">
                              <input class="form-control round-form" id="password" name="clave" type="password" required >
                            </div>
                          </div>
                      </div>
                       <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-round btn-primary" type="submit">Modificar</button>
                             </div>
                          </div>
                        </form>
                      </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="agregarAvatar" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Cambio de avatar</h4>
                        <form role="form" class="form-horizontal" enctype="multipart/form-data"  method="POST" action="../controlador/subirAvatar.php">
						<input type="hidden" name="idusuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['idusuario'];?>" readOnly="readOnly">
						<div class="form-group">
                            <label class="col-lg-2 control-label">Usuario</label>
                            <div class="col-lg-6">
                              <input type="text" name="usuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['usuario'];?>" required readOnly="readOnly"> 
                            </div>
                          </div>
						 <div class="form-group last">
						  <label class="control-label col-md-3">Subir Avatar</label>
						  <div class="col-md-9">
							<div class="fileupload fileupload-new" data-provides="fileupload">
							  <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
								<img src="../imagenes/usuario.jpg" alt="" />
							  </div>
							  <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
							  <div>
								<span class="btn btn-theme02 btn-file">
								  <span class="fileupload-new"><i class="fa fa-paperclip"></i> Selecciona la imagen</span>
								<span class="fileupload-exists"><i class="fa fa-undo"></i> Cambiar</span>
								<input type="file" name="imagen" id="imagen" class="default" />
								</span>
							  </div>
							</div>
							<span class="label label-info">NOTE!</span>
							<span>
							  La miniatura de la imagen adjunta es
							  compatible<br /> con las últimas versiones de Firefox, Chrome, Opera,<br />
							  Solo Safari e Internet Explorer 10
							  </span>
						  </div>
						</div>
                       <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-round btn-primary" type="submit">Modificar</button>
                             </div>
                          </div>
                        </form>
                      </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
            <!-- /col-lg-12 -->
          
        <!-- /container -->
      </section>
      <!-- /wrapper -->
    </section>
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
  <script src="../lib/jquery/jquery.min.js"></script>
  <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="../lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="../lib/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="../lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../lib/jquery.scrollTo.min.js"></script>
  <script src="../lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" src="../lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <!--script for this page-->

</body>

</html>
