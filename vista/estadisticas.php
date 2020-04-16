<?php 
 include_once '../controlador/inicioSesion.php';
include_once("../controlador/estadisticas.php");
$cedulaUsuarioEntrega = $_GET["cedulaUsuarioEntrega"];
$varEstadisticas=estadistica($cedulaUsuarioEntrega);
$array = explode("||", $varEstadisticas);
$totalsolicitud = $array[0];
$totalusuario = $array[1];         
?>
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
  <!-- Custom styles for this template -->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">
  <script src="../Js/jquery1.9.js"></script> 
  <script src="../Js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"></script>
    <script type="text/javascript">
    $(function () {

      $(document).ready(function () {

        // Build the chart
        $('#torta').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: 'Estadisticas de la solicitudes cerradas por el usuario <?php echo $_SESSION['saludo'];?>
                       <br />total solicitud <?php echo$totalsolicitud;?> que representa el 100%<br />total solicitud cerradas por el usuario <?php echo$totalusuario;?> que representa X.'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                type: 'pie',
                name: 'Solicitudes',
                data: [

                    ['total solicitudes',<?php echo$totalsolicitud; ?>],
                    ['total solicitudes cerradas por usuario', <?php echo$totalusuario; ?> ]
                ]
            }]
        });
    });

});
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
        <div class="row content-panel">
          <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>Solicitudes cerradas por el usuario <?php echo $_SESSION['saludo'];?></h4>
                <div class="panel-body text-center">
                  <div id="torta"></div>
                </div>
              </div>
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
  <!--common script for all pages-->
  <script src="../lib/common-scripts.js"></script>
  <script src="../Js/Highcharts-4.1.5/highcharts.js"></script>
  <script src="../Js/modules/Highcharts-4.1.5/exporting.js"></script>
  <!--script for this page-->

</body>

</html>
