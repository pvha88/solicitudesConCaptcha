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
  <script src="../Js/verUsuarios.js" type="text/javascript"></script>
  <script src="../Js/funcionesUsuario.js" type="text/javascript"></script>
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
                        <button class="btn btn-primary" data-toggle="modal" data-target="#modalNuevo">
                          Agregar usuario 
                          <span class="glyphicon glyphicon-plus"></span>
                        </button>
                        <h4 class="mb">Lista de los usuarios</h4>
							<table align="center" border="1" id="tablaVerUsuarios"  cellpadding="1"style=" background: #CCCCCC;">
								<thead>
									<tr>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-sort-numeric-asc"></i>C&eacute;dula N&uacute;mero</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-user"></i>Nombre y apellido</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-envelope-o"></i>Correo</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-user"></i>Tipo de Usuario</strong></font></td>
                    <td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa fa-user"></i>Cuenta</strong></font></td>
										<td style="background-color: #58D3F7"><font color='#000000'><strong><i class=" fa 
fa-edit "></i>Acci&oacute;n</strong></font></td>
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
     <!-- Modal para registros nuevos -->


<div class="modal fade" id="modalNuevo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Agrega nueva usuario</h4>
      </div>
        <label>Tipo de Documento</label>
        <select class="form-control round-form" name="" id="tipodocumento">
        <option value="C" selected>Cedula</option>
        <option value="P" >Pasaporte</option>
        </select>
        <label>N&uacute;mero de C&eacute;dula</label>
        <input class=" form-control round-form" id="cedula" name="" minlength="2" maxlength="30" type="text" required />
        <label>Nombre</label>
        <input class=" form-control round-form" id="nombre" name="" minlength="4" maxlength="30" type="text" required />
        <label>Apellido</label>
        <input class=" form-control round-form" id="apellido" name="" minlength="4" maxlength="30" type="text" required />
        <label>Nombre de Usuario</label>
        <input class=" form-control round-form" id="usuario" name="" minlength="4" maxlength="30" type="text" required />
        <label>Tipo de Usuario</label>
        <select class="form-control round-form" name="" id="tipousuario">
        <option value="USUARIO" selected>Usuario</option>
        <option value="ASISTENTE" >Asistente</option>
        </select>
        <label>Correo</label>
        <input class="form-control round-form" id="correo" type="email" name="" required />
        <label>Password</label>
        <input class="form-control round-form" id="clave" name="" type="password" required/>
        </form>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal" id="guardarUsuario">
        Agregar
        </button>
       
      </div>
    </div>
  </div>
</div>
<!-- Fin modal registros nuevos -->
<!-- Modal para edicion de datos -->

<div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Actualizar datos</h4>
      </div>
      <div class="modal-body">
          <label>Tipo de Documento</label>
          <input type="hidden" name="" id="idusuarioU" class="form-control round-form">
          <input type="text" name="" id="tipodocumentoU" maxlength="1" class="form-control round-form" placeholder="Colocar C si es cedula o P si es pasaporte">
          <label>C&eacute;dula</label>
          <input type="text" name="" id="cedulaU" class="form-control round-form">
          <label>Nombre</label>
          <input type="text" name="" id="nombreU" class="form-control round-form">
          <label>Apellido</label>
          <input type="text" name="" id="apellidoU" class="form-control round-form">
          <label>Email</label>
          <input type="text" name="" id="correoU" class="form-control round-form">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" id="" onclick="actualizadatos();" data-dismiss="modal">Actualizar</button>
        
      </div>
    </div>
  </div>
</div>
<!-- Fin modal edicion de datos-->
<!-- Modal para eliminar datos -->
    <div class="modal fade" id="modalEliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Suspender Cuenta de usuario</h4>
        </div>
        <div class="modal-body">
          <label>Id usuario</label>
          <input type="text" name="" id="idusuarioE" class="form-control round-form" readOnly="readOnly">
          <label>Primer Nombre</label>
          <input type="text" name="" id="nombreE" class="form-control round-form" readOnly="readOnly">
          <label>Primer Apellido</label>
          <input type="text" name="" id="apellidoE" class="form-control round-form" readOnly="readOnly">
          <label>Activar o Desactivar Cuenta</label>
          <select class="form-control round-form" name="" id="activarDesactivar">
          <option value="true" selected>Activar</option>
          <option value="false" >Desactivar</option>
          </select>  
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-warning" id="" onclick="eliminarDatos();" data-dismiss="modal">Suspender</button>
        
        </div>
    </div>
  </div>
</div>
        <!----Fin modal datos---->
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
<script type="text/javascript">
        $('#guardarUsuario').click(function(){
          tipodocumento=$('#tipodocumento').val();
          cedula=$('#cedula').val();
          nombre=$('#nombre').val();
          apellido=$('#apellido').val();
          usuario=$('#usuario').val();
          correo=$('#correo').val();
          clave=$('#clave').val();tipousuario
          tipousuario=$('#tipousuario').val();
          guardarUsuario(tipodocumento,cedula,nombre,apellido,usuario,correo,clave,tipousuario);
      });
    $('#actualizadatos').click(function(){
          actualizadatos();
      });
  $('#eliminarDatos').click(function(){
          eliminarDatos();
      });
</script>
</body>

</html>
