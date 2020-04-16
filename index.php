<?php
session_start();
$_SESSION["usuario"] = Null;
$_SESSION["clave"] = Null;
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Solicitud Actas</title>
  <!-- Favicons -->
  <link href="imagenes/favicon.ico" rel="icon">
  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="lib/bootstrap-fileupload/bootstrap-fileupload.css" rel="stylesheet" type="text/css"  />
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">


</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" id="commentForm" method="POST" action="controlador/autenticarUsuario.php">
	  
        <h2 class="form-login-heading">INGRESA  AHORA</h2>
        <label class="checkbox">
            <span class="pull-right">
            <a data-toggle="modal" href="login.html#myModal"> olvidaste tu clave?</a>
            </span>
            </label>
        <div class="login-wrap">
          <input type="text" required class="form-control round-form" name="usuario" placeholder="Usuario" autofocus autocomplete="off" />
          <br>
          <input type="password" required class="form-control round-form" name="clave" placeholder="Clave" autocomplete="off" />
          <br>
          <input id="captcha_code" type="text" name="captcha" placeholder= "CAPTCHA" size="6" maxlength="5"required class="form-control round-form" autocomplete="off" />
          <br>
          <img id="captcha" src="controlador/captcha.php" width="160" height="45" border="1" alt="CAPTCHA"></img>
          <small ><a href="#" onclick="document.getElementById('captcha').src = 'controlador/captcha.php?' + Math.random();  document.getElementById('captcha_code').value = '';  return false;"><span class="fileupload-exists"><i class="fa fa-undo"></i> Cambiar</span></a></small>
          
          <br>
		  <input type="hidden"  class="form-control round-form" name="login" value="1">
          <label class="checkbox">
		        <span class="pull-right">no tienes cuenta?<br />
            <a data-toggle="modal" href="login.html#myModal1"> Crear cuenta</a>
            </span>
            
            </label>
          <button class="btn btn-round btn-primary btn-block" type="submit"><i class="fa fa-lock"></i> INGRESAR</button>
		  </form>
        </div>
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Olvidaste tu contraseña</h4>
              </div>
              <div class="modal-body">
				<div class="form-panel">
				<div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="controlador/modificarClaveDeUsuario.php">
                <p>Para cambiar la clave ingrese el correo y la nueva clave</p>
				<div class="form-group ">
                    <label for="cemail" class="control-label col-lg-2">Usuario</label>
                    <div class="col-lg-10">
                      <input class="form-control round-form" id="ccorreo" type="text" name="usuario" required autocomplete="off"/>
                    </div>
                  </div>
                <div class="form-group ">
                    <label for="cemail" class="control-label col-lg-2">Correo</label>
                    <div class="col-lg-10">
                      <input class="form-control round-form" id="ccorreo" type="email" name="correo" required autocomplete="off" />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="password" class="control-label col-lg-2">Nueva clave</label>
                    <div class="col-lg-10">
                      <input class="form-control round-form" id="password" name="clave" type="password" required autocomplete="off"/>
                    </div>
                  </div>
				<div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-round btn-primary" type="submit">Cambiar</button>
                      <button data-dismiss="modal" class="btn btn-round btn-primary" type="button">Cancelar</button>
                    </div>
				  </div>
				  </form>
				</div>
              </div>
            </div>
          </div>
        </div>
	   <!-- modal -->
		</div>
		<!-- Modal crear cuenta-->
        <div aria-hidden="true" aria-labelledby="myModalLabel1" role="dialog" tabindex="-1" id="myModal1" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Cuenta de Usuario</h4>
              </div>
              <div class="modal-body">
				<div class="form-panel">
				<div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" method="POST" action="controlador/insertarUsuario.php" >
				<div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Tipo de Documento</label>
                    <div class="col-lg-10">
                      <select class="form-control round-form" name="tipodocumento">
						  <option value="C" selected>Cedula</option>
						  <option value="P" >Pasaporte</option>
					  </select>
                    </div>
                  </div>
				<div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">N&uacute;mero de C&eacute;dula</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form" id="ccedula" name="cedula" minlength="2" maxlength="30" type="text" required autocomplete="off" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Nombre</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form" id="cnombre" name="nombre" minlength="4" maxlength="30" type="text" required autocomplete="off" />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Apellido</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form" id="capellido" name="apellido" minlength="4" maxlength="30" type="text" required autocomplete="off" />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Nombre de Usuario</label>
                    <div class="col-lg-10">
                      <input class=" form-control round-form" id="cusuario" name="usuario" minlength="4" maxlength="30" type="text" required autocomplete="off" />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="cemail" class="control-label col-lg-2">Correo</label>
                    <div class="col-lg-10">
                      <input class="form-control round-form" id="ccorreo" type="email" name="correo" required autocomplete="off" />
                    </div>
                  </div>
				  <div class="form-group ">
                    <label for="password" class="control-label col-lg-2">Password</label>
                    <div class="col-lg-10">
                      <input class="form-control round-form" id="password" name="clave" type="password" required autocomplete="off"/>
                    </div>
                  </div>
				  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-round btn-primary"  name="enviar" id="enviar" type="submit">Registrar</button>
                      <button data-dismiss="modal" class="btn btn-round btn-primary" type="button">Cancelar</button>
                    </div>
				  </div>
					</form>
				</div>
              </div> 
            </div>
          </div>
        </div>
        <!-- modal -->
      
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("imagenes/cne.jpg", {
      speed: 1500
    });
  </script>
</body>

</html>
