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
  <!--external css-->
  <link rel="stylesheet" type="text/css" href="../lib/bootstrap-datepicker/css/datepicker.css" />
  <link href="../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
  <script src="../Js/jquery/jquery-1.6.4.min.js" type="text/javascript"></script>
  <script src="../Js/spin.min.js" type="text/javascript"></script>
  <script src="../Js/selectDpt.js" type="text/javascript"></script>
  <script>
            $(document).ready(function(){
               cargarEstado = function(){                    
                    $.ajax({ 
                            type: "POST",
                            dataType: "text",
                            data: "",
                            url: dpt.Estado,                                            
                            beforeSend: function(rq) {
                                var target = document.getElementById("esperar");
                                var spinner = new Spinner(opts).spin(target);
                            },
                            success: function (msg){
                                $("#comboEstado").html(msg);                                           
                                $("#esperar").hide();
                            }
                        }); 
                };
                cargarEstado();
				//alert(cargarEstado);
            });
            
            cargarOficina = function(){
                var estado = $( "#comboEstado option:selected" ).val();
                var municipio = $( "#comboMunicipio option:selected" ).val();
                var parroquia = $( "#comboParroquia option:selected" ).val();
                $.ajax({
                        url: '../controlador/procesarOficina.php',
                        type: "POST",
                        dataType: "text",
                        data: "estado="+estado+"&municipio="+municipio+
                               "&parroquia="+parroquia,
                                                                  
                        beforeSend: function(rq) {
                            var target = document.getElementById("esperar");
                            var spinner = new Spinner(opts).spin(target);
                        },
                        success: function (msg){
                            $("#comboOficina").html(msg);                                           
                            $("#comboOficina").css("display", "block");
                            $("#esperar").hide();
                        }
                       
                });
            };
		
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
    <section id="main-content">
      <section class="wrapper site-min-height">
        <div class="form-panel">
		<h3><center><strong>DATOS DEL SOLICITANTE</strong><center></h3><br/>
		<table class="table">
                <tbody>
                  <tr>
					<td>C&eacute;dula: <?php echo$_SESSION["cedula"];?></td>
                  </tr>
                  <tr>
					<td>Nombre y apellido: <?php echo$_SESSION["saludo"];?></td>
                  </tr>
				  <tr>
					<td>Correo: <?php echo$_SESSION["correo"];?></td>
                  </tr>
				  <tr>
					<td></td>
                  </tr>
                </tbody>
              </table>
				<div class=" form">
				<h3><center><strong>FORMULARIO DE SOLICITUD DE ACTA DE <?php echo strtoupper($_GET["tipoacta"]);?></strong><center></h3><br/>
				<h4><strong>Datos del acta</strong></h4>
                <form class="cmxform form-horizontal style-form"  name="form"method="POST" action="../controlador/insertarSolicitud.php">
				<input type="hidden" name="idusuario" id="c-name" class="form-control round-form" value="<?php echo $_SESSION['idusuario'];?>" readOnly="readOnly">
				<div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Tipo de acta a solicitar</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" id="ctipoacta" name="tipoacta" minlength="1" value="<?php echo strtoupper($_GET["tipoacta"]);?>"type="text" required />
                    </div>
                  </div>
				<div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">N&uacute;mero de acta</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" id="ccedula" name="nacta" minlength="1" type="text" required />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">N&uacute;mero de tomo</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" id="cnombre" name="ntomo" minlength="1" type="text" required />
                    </div>
                  </div>
				  <div class="form-group">
                  <label class="control-label col-lg-2">Fecha del acta</label>
                  <div class="col-md-3 col-xs-11">
                    <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-<?php echo $ano=date("Y")?>" class="input-append date dpYears">
                      <input type="text" name="fechaacta" size="16" class="form-control round-form" required>
                      <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                    </div>
                    <span class="help-block">Selecciona la fecha</span>
                  </div>
				</div> 
				
				 <?php
				 switch($_GET["tipoacta"]){
					 case 'nacimiento':?>
					 <!------->
					 <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Primer Nombre</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form"  onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre1" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
				  <label for="cname" class="control-label col-lg-2">Segundo Nombre</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre2" minlength="2" type="text"  />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Primer Apellido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido1" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Segundo Apellido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido2" minlength="2" type="text"  />
                    </div>
                  </div>
				  <!------->
				<?php	 break;
				case 'defuncion':?>
					 <!------->
					 <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Primer Nombre del Fallecido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre1" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
				  <label for="cname" class="control-label col-lg-2">Segundo Nombre del Fallecido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre2" minlength="2" type="text"  />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Primer Apellido del Fallecido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido1" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Segundo Apellido del Fallecido</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido2" minlength="2" type="text"  />
                    </div>
                  </div>
				  <!------->
				<?php break;
				 
				 case 'ueh' or 'matrimonio':?>
					 <!------->
					 <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Primer Nombre del Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre1esposo" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
				  <label for="cname" class="control-label col-lg-2">Segundo Nombre del Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre2esposo" minlength="2" type="text"  />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Primer Apellido del Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido1esposo" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Segundo Apellido del Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido2esposo" minlength="2" type="text"  />
                    </div>
                  </div>
					 <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Primer Nombre de la Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre1esposa" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
				  <label for="cname" class="control-label col-lg-2">Segundo Nombre de la Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="cnombre" name="nombre2esposa" minlength="2" type="text"  />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Primer Apellido de la Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido1esposa" minlength="2" type="text" required />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2"> Segundo Apellido de la Conyuge</label>
                    <div class="col-lg-5">
                      <input class=" form-control round-form" onkeypress="javascript: return ValidarNumero(event,this)" id="capellido" name="apellido2esposa" minlength="2" type="text"  />
                    </div>
                  </div>
				  <!------->
				  <!------->
				<?php	 break;
				 
				}
				 ?>
				  <h4><strong>Datos de la ourc</strong></h4>
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Estado</label>
                    <div class="col-lg-5">
                      <select id="comboEstado" class=" form-control round-form" name="comboEstado" onchange="dpt.mostrarMunicipio(this.value, 'comboMunicipio', 'lmunicipio', '1', '1')" required></select>
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Municipio</label>
                    <div class="col-lg-5">
					<select id="comboMunicipio" name="comboMunicipio" class=" form-control round-form" onchange="dpt.mostrarParroquia(this.value, 'comboEstado', 'comboParroquia', 'lparroquia')" required></select>
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Parroquia</label>
                    <div class="col-lg-5">
                      <select id="comboParroquia" name="comboParroquia" class=" form-control round-form" onchange="cargarOficina();" required></select>
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">OURC</label>
                    <div class="col-lg-5">
                      <select id="comboOficina" name="comboOficina" class=" form-control round-form" required></select>
                    </div>
                  </div>
				  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-round btn-primary"  name="enviar" id="enviar" type="submit">Solicitar</button>
                    </div>
				  </div>
					</form>
				</div>
              </div> 
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
   <script type="text/javascript" src="../lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <script src="../lib/advanced-form-components.js"></script>
  <!--script for this page-->

</body>

</html>
