var opts = {
                  lines: 12, // The number of lines to draw
                  length: 6, // The length of each line
                  width: 4, // The line thickness
                  radius: 6, // The radius of the inner circle
                  color: '#000', // #rgb or #rrggbb
                  speed: 1, // Rounds per second
                  trail: 60, // Afterglow percentage
                  shadow: false // Whether to render a shadow
                };
var dpt = {}; 
dpt.Municipio = "../controlador/procesarMunicipio.php";
dpt.Estado = "../controlador/procesarEstado.php";
dpt.Parroquia = "../controlador/procesarParroquia.php";
dpt.agregarEstado = function(id){
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
                $("#"+id).html(msg);                                           
                $("#esperar").hide();
            }
        }); 
};


dpt.mostrarMunicipio = function (estado, id, label, parroquia, labelparroquia){

    $("#"+parroquia).hide();
    $("#"+labelparroquia).hide();
    var municipioRequest = $.ajax({
                                type: "POST",
                                dataType: "text",
                                url: dpt.Municipio,
                                data: "estado="+estado,
                                beforeSend: function(rq) {
                                    var target = document.getElementById("esperar");
                                    var spinner = new Spinner(opts).spin(target);
                                }
                              }); 
    municipioRequest.done(function(msg){
                               $("#"+id).html('<option value="">---</option>'+msg); 
                               $("#"+label).css("visibility", "visible");
                               $("#"+id).show();
                               $("#esperar").hide();

                            });
    municipioRequest.fail(function(e, xhr, settings, exception) {
                        alert('error in: ' + settings.url + ' \n'+'error:\n' + xhr.responseText ); 
                        alert(exception);
                    });   
};

dpt.mostrarMunicipioSeleccionado = function(estado, municipio){
    $.ajax({
            type: "POST",
            dataType: "text",
            url: dpt.Municipio,
            data: "estado="+estado,
            beforeSend: function(rq) {
                var target = document.getElementById("esperar");
                var spinner = new Spinner(opts).spin(target);
            }, 
            success: function(msg){
                $("#comboMunicipio").html('<option value="">---</option>'+msg); 
                $("#lmunicipio").css("visibility", "visible");
                $("#comboMunicipio").val(municipio);
                $("#comboMunicipio").show();
                $("#esperar").hide();
            }
          }); 
};

dpt.mostrarParroquia = function (municipio, estado, id, label){
    $("#"+label).show();
    var estado = $("#"+estado).val();
    var parroquiaRequest = $.ajax({
                                type: "POST",
                                dataType: "text",
                                url: dpt.Parroquia,
                                data: "estado="+estado+"&municipio="+municipio,
                                beforeSend: function(rq) {
                                    var target = document.getElementById("esperar");
                                    var spinner = new Spinner(opts).spin(target);
                                }
                              }); 
    parroquiaRequest.done(function(msg){
                               $("#"+id).html('<option value="">---</option>'+msg); 
                               $("#"+label).css("visibility", "visible");
                               $("#"+id).show();
                               $("#esperar").hide();

                            });
    parroquiaRequest.fail(function(e, xhr, settings, exception) {
                        alert('error in: ' + settings.url + ' \n'+'error:\n' + xhr.responseText ); 
                        alert(exception);
                    });   
};

dpt.mostrarParroquiaSeleccionada = function(municipio, parroquia){
    var estado = $("#comboEstado").val();
    $.ajax({
            type: "POST",
            dataType: "text",
            url: dpt.Parroquia,
            data: "estado="+estado+"&municipio="+municipio,
            beforeSend: function(rq) {
                var target = document.getElementById("esperar");
                var spinner = new Spinner(opts).spin(target);
            },
            success: function(msg){
                $("#comboParroquia").html('<option value="">---</option>'+msg);
                $("#lparroquia").css("visibility", "visible");
                $("#comboParroquia").show();
                $("#comboParroquia").val(parroquia);
                $("#esperar").hide();
            }
          }); 
};

